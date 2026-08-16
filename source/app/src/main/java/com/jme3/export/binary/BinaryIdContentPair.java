package com.jme3.export.binary;

public class BinaryIdContentPair {
    private BinaryOutputCapsule content;

    private int f81575id;

    public BinaryIdContentPair(int i10, BinaryOutputCapsule binaryOutputCapsule) {
        this.f81575id = i10;
        this.content = binaryOutputCapsule;
    }

    public BinaryOutputCapsule getContent() {
        return this.content;
    }

    public int getId() {
        return this.f81575id;
    }

    public void setContent(BinaryOutputCapsule binaryOutputCapsule) {
        this.content = binaryOutputCapsule;
    }

    public void setId(int i10) {
        this.f81575id = i10;
    }
}
