package models;

public class TestBatchModel {
    private String id;
    private String testdate;
    private String enddate;

    public TestBatchModel(String id, String testdate, String enddate) {
        this.id = id;
        this.testdate = testdate;
        this.enddate = enddate;
    }
    public TestBatchModel(String id){
        this.id=id;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTestdate() {
        return testdate;
    }

    public void setTestdate(String testdato) {
        this.testdate = testdate;
    }
}
