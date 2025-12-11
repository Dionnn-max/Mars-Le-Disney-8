package disney;

public class SplashMountain extends DisneyInstruction {

    public SplashMountain() {
        super("splashmountain",
                "Cd = Cs + Ct (Addition with possible splash)",
                "SPLASHMOUNTAIN $c2, $c3, $c4",
                "0000");
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
        System.out.println("🎢 SPLASHMOUNTAIN: Adding with potential overflow!");
    }
}