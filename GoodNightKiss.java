package disney;

public class GoodNightKiss extends DisneyInstruction {

    public GoodNightKiss() {
        super("goodnightkiss",
                "System halt with fireworks display",
                "GOODNIGHTKISS",
                "1111");
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    @Override
    public String getExample() {
        return this.example;
    }

    @Override
    public String getOpcode() {
        return this.opcode;
    }

    @Override
    public void simulate() {
        super.simulate();
        System.out.println("🎆 GOODNIGHTKISS: Ending with fireworks!");
        System.exit(0); // Actually halt the program
    }
}
