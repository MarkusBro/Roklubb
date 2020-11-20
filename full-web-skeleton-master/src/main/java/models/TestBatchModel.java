package models;

public class TestBatchModel {
    private String id;
    private String testdato;

    public TestBatchModel(String id, String testdato){
        this.id=id;
        this.testdato=testdato;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTestdato() {
        return testdato;
    }

    public void setTestdato(String testdato) {
        this.testdato = testdato;
    }
}
