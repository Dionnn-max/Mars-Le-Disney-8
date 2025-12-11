package disney;

public class MickeyTale extends DisneyInstruction {

    public MickeyTale() {
        super("mickeytale",
                "Cd = Cs + Ct + FASTPASS (Magical addition)",
                "MICKEYTALE $c2, $c3, $c4",
                "1010");
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
        System.out.println("🐭 MICKEYTALE: Adding Disney magic with FASTPASS!");
    }
}