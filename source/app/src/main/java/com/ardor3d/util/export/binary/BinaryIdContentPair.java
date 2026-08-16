package com.ardor3d.util.export.binary;

public class BinaryIdContentPair {
    private BinaryOutputCapsule _content;
    private int _id;

    public BinaryIdContentPair(int i10, BinaryOutputCapsule binaryOutputCapsule) {
        this._id = i10;
        this._content = binaryOutputCapsule;
    }

    public BinaryOutputCapsule getContent() {
        return this._content;
    }

    public int getId() {
        return this._id;
    }

    public void setContent(BinaryOutputCapsule binaryOutputCapsule) {
        this._content = binaryOutputCapsule;
    }

    public void setId(int i10) {
        this._id = i10;
    }
}
