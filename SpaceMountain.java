package disney;

public class SpaceMountain extends DisneyInstruction {

    public SpaceMountain() {
        super("spacemountain",
                "Cd = Cs - Ct (Subtraction in darkness)",
                "SPACEMOUNTAIN $c2, $c3, $c4",
                "0001");
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
        System.out.println("🚀 SPACEMOUNTAIN: Subtracting in the dark!");
    }
}