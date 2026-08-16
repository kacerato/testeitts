package org.objectweb.asm;

final class CurrentFrame extends Frame {
    public CurrentFrame(Label label) {
        super(label);
    }

    @Override
    public void execute(int i10, int i11, Symbol symbol, SymbolTable symbolTable) {
        super.execute(i10, i11, symbol, symbolTable);
        Frame frame = new Frame(null);
        merge(symbolTable, frame, 0);
        copyFrom(frame);
    }
}
