FROM kaggle/python:latest

RUN cd /usr/local/src && git clone https://github.com/scikit-learn/scikit-learn.git && \
    cd scikit-learn && python setup.py build && python setup.py install && \
    conda install h5py && \
    pip install biopython && \
    rm -rf /usr/local/src/* && \
    conda clean -i -l -t -y && \
    rm -rf /root/.cache/pip/*

RUN pip install --upgrade mpld3 && \
    pip install mplleaflet && \
    pip install gpxpy && \
    pip install arrow && \
    pip install sexmachine  && \
    pip install Geohash && \
    pip install deap && \
    pip install tpot && \
    pip install haversine && \
    pip install toolz cytoolz && \
    pip install sacred && \
    pip install plotly && \
    pip install git+https://github.com/nicta/dora.git && \
    pip install git+https://github.com/hyperopt/hyperopt.git && \
    pip install git+https://github.com/tflearn/tflearn.git && \
    pip install fitter && \
    pip install langid && \
    pip install delorean && \
    pip install trueskill && \
    pip install heamy && \
    pip install vida && \
    pip install missingno && \
    pip install pandas-profiling && \
    pip install s2sphere && \
    pip install autopep8 && \
    pip install japanize-matplotlib && \
    pip install kaggle && \
    pip install pyls && \
    pip install python-language-server && \
    rm -rf /root/.cache/pip/*

