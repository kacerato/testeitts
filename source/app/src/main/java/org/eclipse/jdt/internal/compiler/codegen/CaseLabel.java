package org.eclipse.jdt.internal.compiler.codegen;

public class CaseLabel extends BranchLabel {
    public int instructionPosition;

    public CaseLabel(CodeStream codeStream) {
        super(codeStream);
        this.instructionPosition = -1;
    }

    @Override
    public void branch() {
        int i10 = this.position;
        if (i10 != -1) {
            this.codeStream.writeSignedWord(i10 - this.instructionPosition);
            return;
        }
        addForwardReference(this.codeStream.position);
        CodeStream codeStream = this.codeStream;
        codeStream.position += 4;
        codeStream.classFileOffset += 4;
    }

    @Override
    public void branchWide() {
        branch();
    }

    @Override
    public boolean isCaseLabel() {
        return true;
    }

    @Override
    public boolean isStandardLabel() {
        return false;
    }

    @Override
    public void place() {
        if ((this.tagBits & 2) != 0) {
            this.position = this.codeStream.getPosition();
        } else {
            this.position = this.codeStream.position;
        }
        int i10 = this.instructionPosition;
        if (i10 != -1) {
            int i11 = this.position - i10;
            int[] forwardReferences = forwardReferences();
            int forwardReferenceCount = forwardReferenceCount();
            for (int i12 = 0; i12 < forwardReferenceCount; i12++) {
                this.codeStream.writeSignedWord(forwardReferences[i12], i11);
            }
            this.codeStream.addLabel(this);
        }
    }

    public void placeInstruction() {
        if (this.instructionPosition == -1) {
            this.instructionPosition = this.codeStream.position;
        }
    }
}
