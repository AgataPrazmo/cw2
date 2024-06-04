from app import app

def test():
    hello = app.test_client().get('/')
    assert hello.status_code == 200
    assert hello.data == b"Hello, World!"


