from fabric import task


@task()
def test(c):
    c.run('echo test works')
