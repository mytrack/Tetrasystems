<<FLASK_SETUP

FileUpload) https://github.com/kirsle/flask-multi-upload


python -c 'import sys; print(sys.getdefaultencoding())'

echo "import sys; reload(sys); sys.setdefaultencoding('utf-8')" > sitecustomize.py

PYTHONPATH=".:$PYTHONPATH" python -c 'import sys; print(sys.getdefaultencoding())'

python -c 'import sys; print(sys.stdin.encoding, sys.stdout.encoding)'

PYTHONIOENCODING="utf-8" python -c 'import sys; print(sys.stdin.encoding, sys.stdout.encoding)'

export PYTHONIOENCODING=utf8

sudo cp sitecustomize.py /usr/lib/python2.7/ 



Subtitle srt)

sudo pip install pysrt

# other stable version
#sudo pip install -U srt
# latest development version
sudo pip install -U git+https://github.com/cdown/srt.git@develop

test>
sudo pip install tox
tox -e quick


FLASK_SETUP