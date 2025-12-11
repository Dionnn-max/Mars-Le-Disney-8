package disney;

public abstract class DisneyInstruction {
    protected String name;
    protected String description;
    protected String example;
    protected String opcode;

    public DisneyInstruction(String name, String description,
                             String example, String opcode) {
        this.name = name;
        this.description = description;
        this.example = example;
        this.opcode = opcode;
    }

    public abstract String getName();
    public abstract String getDescription();
    public abstract String getExample();
    public abstract String getOpcode();

    public void simulate() {
        System.out.println("Executing: " + name);
    }
}