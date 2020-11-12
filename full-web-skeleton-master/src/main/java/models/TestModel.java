package models;

public class TestModel {
    private String testBatchId;
    private String nameId;
    private String rank;
    private String score;
    private String classNameStatic;
    private String kmt5;
    private String kmW5;
    private String kmT3;
    private String kmW3;
    private String kmT2;
    private String kmW2;
    private String W60s;
    private String percentLieRow;
    private String kgLieRow;
    private String percentSquat;
    private String kgSquat;
    private String bodyLift;
    private String cmSargeant;
    private String flexibility;

    public TestModel(String testBatchId, String nameId, String rank, String score, String classNameStatic, String kmt5, String kmW5,
                     String kmT2, String kmW2, String W60s, String percentLieRow, String kgLieRow, String percentSquat,
                     String kgSquat){
            this.testBatchId = testBatchId;
            this.nameId = nameId;
            this.rank = rank;
            this.score = score;
            this.classNameStatic = classNameStatic;
            this.kmt5 = kmt5;
            this.kmW5 = kmW5;
            this.kmT2 = kmT2;
            this.kmW2 = kmW2;
            this.W60s = W60s;
            this.percentLieRow = percentLieRow;
            this.kgLieRow = kgLieRow;
            this.percentSquat = percentSquat;
            this.kgSquat = kgSquat;
    }

    public String getTestBatchId() {
        return testBatchId;
    }

    public void setTestBatchId(String testBatchId) {
        this.testBatchId = testBatchId;
    }

    public String getNameId() {
        return nameId;
    }

    public void setNameId(String nameId) {
        this.nameId = nameId;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getClassNameStatic() {
        return classNameStatic;
    }

    public void setClassNameStatic(String classNameStatic) {
        this.classNameStatic = classNameStatic;
    }

    public String getKmt5() {
        return kmt5;
    }

    public void setKmt5(String kmt5) {
        this.kmt5 = kmt5;
    }

    public String getKmW5() {
        return kmW5;
    }

    public void setKmW5(String kmW5) {
        this.kmW5 = kmW5;
    }

    public String getKmT3() {
        return kmT3;
    }

    public void setKmT3(String kmT3) {
        this.kmT3 = kmT3;
    }

    public String getKmW3() {
        return kmW3;
    }

    public void setKmW3(String kmW3) {
        this.kmW3 = kmW3;
    }

    public String getKmT2() {
        return kmT2;
    }

    public void setKmT2(String kmT2) {
        this.kmT2 = kmT2;
    }

    public String getKmW2() {
        return kmW2;
    }

    public void setKmW2(String kmW2) {
        this.kmW2 = kmW2;
    }

    public String getW60s() {
        return W60s;
    }

    public void setW60s(String w60s) {
        W60s = w60s;
    }

    public String getPercentLieRow() {
        return percentLieRow;
    }

    public void setPercentLieRow(String percentLieRow) {
        this.percentLieRow = percentLieRow;
    }

    public String getKgLieRow() {
        return kgLieRow;
    }

    public void setKgLieRow(String kgLieRow) {
        this.kgLieRow = kgLieRow;
    }

    public String getPercentSquat() {
        return percentSquat;
    }

    public void setPercentSquat(String percentSquat) {
        this.percentSquat = percentSquat;
    }

    public String getKgSquat() {
        return kgSquat;
    }

    public void setKgSquat(String kgSquat) {
        this.kgSquat = kgSquat;
    }

    public String getBodyLift() {
        return bodyLift;
    }

    public void setBodyLift(String bodyLift) {
        this.bodyLift = bodyLift;
    }

    public String getCmSargeant() {
        return cmSargeant;
    }

    public void setCmSargeant(String cmSargeant) {
        this.cmSargeant = cmSargeant;
    }

    public String getFlexibility() {
        return flexibility;
    }

    public void setFlexibility(String flexibility) {
        this.flexibility = flexibility;
    }
}