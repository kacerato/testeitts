package com.android.dx.io.instructions;

import com.android.dex.DexException;
import com.android.dx.io.IndexType;
import com.android.dx.io.OpcodeInfo;
import com.android.dx.util.Hex;
import java.io.EOFException;

public enum InstructionCodec {
    FORMAT_00X {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new ZeroRegisterDecodedInstruction(this, i10, 0, null, 0, 0L);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(decodedInstruction.getOpcodeUnit());
        }
    },
    FORMAT_10X {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new ZeroRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(decodedInstruction.getOpcodeUnit());
        }
    },
    FORMAT_12X {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new TwoRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, 0L, InstructionCodec.nibble2(i10), InstructionCodec.nibble3(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcodeUnit(), InstructionCodec.makeByte(decodedInstruction.getA(), decodedInstruction.getB())));
        }
    },
    FORMAT_11N {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new OneRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, (InstructionCodec.nibble3(i10) << 28) >> 28, InstructionCodec.nibble2(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcodeUnit(), InstructionCodec.makeByte(decodedInstruction.getA(), decodedInstruction.getLiteralNibble())));
        }
    },
    FORMAT_11X {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new OneRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, 0L, InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()));
        }
    },
    FORMAT_10T {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new ZeroRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, (codeInput.cursor() - 1) + ((byte) InstructionCodec.byte1(i10)), 0L);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getTargetByte(codeOutput.cursor())));
        }
    },
    FORMAT_20T {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new ZeroRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, (codeInput.cursor() - 1) + ((short) codeInput.read()), InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(decodedInstruction.getOpcodeUnit(), decodedInstruction.getTargetUnit(codeOutput.cursor()));
        }
    },
    FORMAT_20BC {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new ZeroRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), codeInput.read(), IndexType.VARIES, 0, InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getLiteralByte()), decodedInstruction.getIndexUnit());
        }
    },
    FORMAT_22X {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new TwoRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, 0L, InstructionCodec.byte1(i10), codeInput.read());
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), decodedInstruction.getBUnit());
        }
    },
    FORMAT_21T {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new OneRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, (codeInput.cursor() - 1) + ((short) codeInput.read()), 0L, InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), decodedInstruction.getTargetUnit(codeOutput.cursor()));
        }
    },
    FORMAT_21S {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new OneRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, (short) codeInput.read(), InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), decodedInstruction.getLiteralUnit());
        }
    },
    FORMAT_21H {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            int byte0 = InstructionCodec.byte0(i10);
            return new OneRegisterDecodedInstruction(this, byte0, 0, null, 0, ((short) codeInput.read()) << (byte0 == 21 ? (char) 16 : '0'), InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            int opcode = decodedInstruction.getOpcode();
            codeOutput.write(InstructionCodec.codeUnit(opcode, decodedInstruction.getA()), (short) (decodedInstruction.getLiteral() >> (opcode == 21 ? (char) 16 : '0')));
        }
    },
    FORMAT_21C {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            int byte0 = InstructionCodec.byte0(i10);
            return new OneRegisterDecodedInstruction(this, byte0, codeInput.read(), OpcodeInfo.getIndexType(byte0), 0, 0L, InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), decodedInstruction.getIndexUnit());
        }
    },
    FORMAT_23X {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            int byte0 = InstructionCodec.byte0(i10);
            int byte1 = InstructionCodec.byte1(i10);
            int read = codeInput.read();
            return new ThreeRegisterDecodedInstruction(this, byte0, 0, null, 0, 0L, byte1, InstructionCodec.byte0(read), InstructionCodec.byte1(read));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), InstructionCodec.codeUnit(decodedInstruction.getB(), decodedInstruction.getC()));
        }
    },
    FORMAT_22B {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new TwoRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, (byte) InstructionCodec.byte1(r11), InstructionCodec.byte1(i10), InstructionCodec.byte0(codeInput.read()));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), InstructionCodec.codeUnit(decodedInstruction.getB(), decodedInstruction.getLiteralByte()));
        }
    },
    FORMAT_22T {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new TwoRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, (codeInput.cursor() - 1) + ((short) codeInput.read()), 0L, InstructionCodec.nibble2(i10), InstructionCodec.nibble3(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), InstructionCodec.makeByte(decodedInstruction.getA(), decodedInstruction.getB())), decodedInstruction.getTargetUnit(codeOutput.cursor()));
        }
    },
    FORMAT_22S {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new TwoRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, (short) codeInput.read(), InstructionCodec.nibble2(i10), InstructionCodec.nibble3(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), InstructionCodec.makeByte(decodedInstruction.getA(), decodedInstruction.getB())), decodedInstruction.getLiteralUnit());
        }
    },
    FORMAT_22C {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            int byte0 = InstructionCodec.byte0(i10);
            return new TwoRegisterDecodedInstruction(this, byte0, codeInput.read(), OpcodeInfo.getIndexType(byte0), 0, 0L, InstructionCodec.nibble2(i10), InstructionCodec.nibble3(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), InstructionCodec.makeByte(decodedInstruction.getA(), decodedInstruction.getB())), decodedInstruction.getIndexUnit());
        }
    },
    FORMAT_22CS {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new TwoRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), codeInput.read(), IndexType.FIELD_OFFSET, 0, 0L, InstructionCodec.nibble2(i10), InstructionCodec.nibble3(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), InstructionCodec.makeByte(decodedInstruction.getA(), decodedInstruction.getB())), decodedInstruction.getIndexUnit());
        }
    },
    FORMAT_30T {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new ZeroRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, (codeInput.cursor() - 1) + codeInput.readInt(), InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            int target = decodedInstruction.getTarget(codeOutput.cursor());
            codeOutput.write(decodedInstruction.getOpcodeUnit(), InstructionCodec.unit0(target), InstructionCodec.unit1(target));
        }
    },
    FORMAT_32X {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new TwoRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, InstructionCodec.byte1(i10), codeInput.read(), codeInput.read());
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            codeOutput.write(decodedInstruction.getOpcodeUnit(), decodedInstruction.getAUnit(), decodedInstruction.getBUnit());
        }
    },
    FORMAT_31I {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new OneRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, codeInput.readInt(), InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            int literalInt = decodedInstruction.getLiteralInt();
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), InstructionCodec.unit0(literalInt), InstructionCodec.unit1(literalInt));
        }
    },
    FORMAT_31T {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            int cursor = codeInput.cursor() - 1;
            int byte0 = InstructionCodec.byte0(i10);
            int byte1 = InstructionCodec.byte1(i10);
            int readInt = cursor + codeInput.readInt();
            if (byte0 == 43 || byte0 == 44) {
                codeInput.setBaseAddress(readInt, cursor);
            }
            return new OneRegisterDecodedInstruction(this, byte0, 0, null, readInt, 0L, byte1);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            int target = decodedInstruction.getTarget(codeOutput.cursor());
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), InstructionCodec.unit0(target), InstructionCodec.unit1(target));
        }
    },
    FORMAT_31C {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            int byte0 = InstructionCodec.byte0(i10);
            return new OneRegisterDecodedInstruction(this, byte0, codeInput.readInt(), OpcodeInfo.getIndexType(byte0), 0, 0L, InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            int index = decodedInstruction.getIndex();
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), InstructionCodec.unit0(index), InstructionCodec.unit1(index));
        }
    },
    FORMAT_35C {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return InstructionCodec.decodeRegisterList(this, i10, codeInput);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            InstructionCodec.encodeRegisterList(decodedInstruction, codeOutput);
        }
    },
    FORMAT_35MS {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return InstructionCodec.decodeRegisterList(this, i10, codeInput);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            InstructionCodec.encodeRegisterList(decodedInstruction, codeOutput);
        }
    },
    FORMAT_35MI {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return InstructionCodec.decodeRegisterList(this, i10, codeInput);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            InstructionCodec.encodeRegisterList(decodedInstruction, codeOutput);
        }
    },
    FORMAT_3RC {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return InstructionCodec.decodeRegisterRange(this, i10, codeInput);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            InstructionCodec.encodeRegisterRange(decodedInstruction, codeOutput);
        }
    },
    FORMAT_3RMS {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return InstructionCodec.decodeRegisterRange(this, i10, codeInput);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            InstructionCodec.encodeRegisterRange(decodedInstruction, codeOutput);
        }
    },
    FORMAT_3RMI {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return InstructionCodec.decodeRegisterRange(this, i10, codeInput);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            InstructionCodec.encodeRegisterRange(decodedInstruction, codeOutput);
        }
    },
    FORMAT_51L {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return new OneRegisterDecodedInstruction(this, InstructionCodec.byte0(i10), 0, null, 0, codeInput.readLong(), InstructionCodec.byte1(i10));
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            long literal = decodedInstruction.getLiteral();
            codeOutput.write(InstructionCodec.codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getA()), InstructionCodec.unit0(literal), InstructionCodec.unit1(literal), InstructionCodec.unit2(literal), InstructionCodec.unit3(literal));
        }
    },
    FORMAT_45CC {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return InstructionCodec.decodeRegisterList(this, i10, codeInput);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            InstructionCodec.encodeRegisterList(decodedInstruction, codeOutput);
        }
    },
    FORMAT_4RCC {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            return InstructionCodec.decodeRegisterList(this, i10, codeInput);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            InstructionCodec.encodeRegisterList(decodedInstruction, codeOutput);
        }
    },
    FORMAT_PACKED_SWITCH_PAYLOAD {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            int baseAddressForCursor = codeInput.baseAddressForCursor() - 1;
            int read = codeInput.read();
            int readInt = codeInput.readInt();
            int[] iArr = new int[read];
            for (int i11 = 0; i11 < read; i11++) {
                iArr[i11] = codeInput.readInt() + baseAddressForCursor;
            }
            return new PackedSwitchPayloadDecodedInstruction(this, i10, readInt, iArr);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            PackedSwitchPayloadDecodedInstruction packedSwitchPayloadDecodedInstruction = (PackedSwitchPayloadDecodedInstruction) decodedInstruction;
            int[] targets = packedSwitchPayloadDecodedInstruction.getTargets();
            int baseAddressForCursor = codeOutput.baseAddressForCursor();
            codeOutput.write(packedSwitchPayloadDecodedInstruction.getOpcodeUnit());
            codeOutput.write(InstructionCodec.asUnsignedUnit(targets.length));
            codeOutput.writeInt(packedSwitchPayloadDecodedInstruction.getFirstKey());
            for (int i10 : targets) {
                codeOutput.writeInt(i10 - baseAddressForCursor);
            }
        }
    },
    FORMAT_SPARSE_SWITCH_PAYLOAD {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            int baseAddressForCursor = codeInput.baseAddressForCursor() - 1;
            int read = codeInput.read();
            int[] iArr = new int[read];
            int[] iArr2 = new int[read];
            for (int i11 = 0; i11 < read; i11++) {
                iArr[i11] = codeInput.readInt();
            }
            for (int i12 = 0; i12 < read; i12++) {
                iArr2[i12] = codeInput.readInt() + baseAddressForCursor;
            }
            return new SparseSwitchPayloadDecodedInstruction(this, i10, iArr, iArr2);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            SparseSwitchPayloadDecodedInstruction sparseSwitchPayloadDecodedInstruction = (SparseSwitchPayloadDecodedInstruction) decodedInstruction;
            int[] keys = sparseSwitchPayloadDecodedInstruction.getKeys();
            int[] targets = sparseSwitchPayloadDecodedInstruction.getTargets();
            int baseAddressForCursor = codeOutput.baseAddressForCursor();
            codeOutput.write(sparseSwitchPayloadDecodedInstruction.getOpcodeUnit());
            codeOutput.write(InstructionCodec.asUnsignedUnit(targets.length));
            for (int i10 : keys) {
                codeOutput.writeInt(i10);
            }
            for (int i11 : targets) {
                codeOutput.writeInt(i11 - baseAddressForCursor);
            }
        }
    },
    FORMAT_FILL_ARRAY_DATA_PAYLOAD {
        @Override
        public DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException {
            int read = codeInput.read();
            int readInt = codeInput.readInt();
            int i11 = 0;
            if (read == 1) {
                byte[] bArr = new byte[readInt];
                boolean z10 = true;
                int i12 = 0;
                while (i11 < readInt) {
                    if (z10) {
                        i12 = codeInput.read();
                    }
                    bArr[i11] = (byte) (i12 & 255);
                    i12 >>= 8;
                    i11++;
                    z10 = !z10;
                }
                return new FillArrayDataPayloadDecodedInstruction((InstructionCodec) this, i10, bArr);
            }
            if (read == 2) {
                short[] sArr = new short[readInt];
                while (i11 < readInt) {
                    sArr[i11] = (short) codeInput.read();
                    i11++;
                }
                return new FillArrayDataPayloadDecodedInstruction((InstructionCodec) this, i10, sArr);
            }
            if (read == 4) {
                int[] iArr = new int[readInt];
                while (i11 < readInt) {
                    iArr[i11] = codeInput.readInt();
                    i11++;
                }
                return new FillArrayDataPayloadDecodedInstruction((InstructionCodec) this, i10, iArr);
            }
            if (read != 8) {
                throw new DexException("bogus element_width: " + Hex.u2(read));
            }
            long[] jArr = new long[readInt];
            while (i11 < readInt) {
                jArr[i11] = codeInput.readLong();
                i11++;
            }
            return new FillArrayDataPayloadDecodedInstruction(this, i10, jArr);
        }

        @Override
        public void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
            FillArrayDataPayloadDecodedInstruction fillArrayDataPayloadDecodedInstruction = (FillArrayDataPayloadDecodedInstruction) decodedInstruction;
            short elementWidthUnit = fillArrayDataPayloadDecodedInstruction.getElementWidthUnit();
            Object data = fillArrayDataPayloadDecodedInstruction.getData();
            codeOutput.write(fillArrayDataPayloadDecodedInstruction.getOpcodeUnit());
            codeOutput.write(elementWidthUnit);
            codeOutput.writeInt(fillArrayDataPayloadDecodedInstruction.getSize());
            if (elementWidthUnit == 1) {
                codeOutput.write((byte[]) data);
                return;
            }
            if (elementWidthUnit == 2) {
                codeOutput.write((short[]) data);
                return;
            }
            if (elementWidthUnit == 4) {
                codeOutput.write((int[]) data);
            } else {
                if (elementWidthUnit == 8) {
                    codeOutput.write((long[]) data);
                    return;
                }
                throw new DexException("bogus element_width: " + Hex.u2(elementWidthUnit));
            }
        }
    };

    public static short asUnsignedUnit(int i10) {
        if (((-65536) & i10) == 0) {
            return (short) i10;
        }
        throw new IllegalArgumentException("bogus unsigned code unit");
    }

    public static int byte0(int i10) {
        return i10 & 255;
    }

    public static int byte1(int i10) {
        return (i10 >> 8) & 255;
    }

    private static int byte2(int i10) {
        return (i10 >> 16) & 255;
    }

    private static int byte3(int i10) {
        return i10 >>> 24;
    }

    public static short codeUnit(int i10, int i11) {
        if ((i10 & (-256)) != 0) {
            throw new IllegalArgumentException("bogus lowByte");
        }
        if ((i11 & (-256)) == 0) {
            return (short) (i10 | (i11 << 8));
        }
        throw new IllegalArgumentException("bogus highByte");
    }

    public static DecodedInstruction decodeRegisterList(InstructionCodec instructionCodec, int i10, CodeInput codeInput) throws EOFException {
        int byte0 = byte0(i10);
        int nibble2 = nibble2(i10);
        int nibble3 = nibble3(i10);
        int read = codeInput.read();
        int read2 = codeInput.read();
        int nibble0 = nibble0(read2);
        int nibble1 = nibble1(read2);
        int nibble22 = nibble2(read2);
        int nibble32 = nibble3(read2);
        IndexType indexType = OpcodeInfo.getIndexType(byte0);
        if (nibble3 == 0) {
            return new ZeroRegisterDecodedInstruction(instructionCodec, byte0, read, indexType, 0, 0L);
        }
        if (nibble3 == 1) {
            return new OneRegisterDecodedInstruction(instructionCodec, byte0, read, indexType, 0, 0L, nibble0);
        }
        if (nibble3 == 2) {
            return new TwoRegisterDecodedInstruction(instructionCodec, byte0, read, indexType, 0, 0L, nibble0, nibble1);
        }
        if (nibble3 == 3) {
            return new ThreeRegisterDecodedInstruction(instructionCodec, byte0, read, indexType, 0, 0L, nibble0, nibble1, nibble22);
        }
        if (nibble3 == 4) {
            return new FourRegisterDecodedInstruction(instructionCodec, byte0, read, indexType, 0, 0L, nibble0, nibble1, nibble22, nibble32);
        }
        if (nibble3 == 5) {
            return new FiveRegisterDecodedInstruction(instructionCodec, byte0, read, indexType, 0, 0L, nibble0, nibble1, nibble22, nibble32, nibble2);
        }
        throw new DexException("bogus registerCount: " + Hex.uNibble(nibble3));
    }

    public static DecodedInstruction decodeRegisterRange(InstructionCodec instructionCodec, int i10, CodeInput codeInput) throws EOFException {
        int byte0 = byte0(i10);
        int byte1 = byte1(i10);
        return new RegisterRangeDecodedInstruction(instructionCodec, byte0, codeInput.read(), OpcodeInfo.getIndexType(byte0), 0, 0L, codeInput.read(), byte1);
    }

    public static void encodeRegisterList(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
        codeOutput.write(codeUnit(decodedInstruction.getOpcode(), makeByte(decodedInstruction.getE(), decodedInstruction.getRegisterCount())), decodedInstruction.getIndexUnit(), codeUnit(decodedInstruction.getA(), decodedInstruction.getB(), decodedInstruction.getC(), decodedInstruction.getD()));
    }

    public static void encodeRegisterRange(DecodedInstruction decodedInstruction, CodeOutput codeOutput) {
        codeOutput.write(codeUnit(decodedInstruction.getOpcode(), decodedInstruction.getRegisterCount()), decodedInstruction.getIndexUnit(), decodedInstruction.getAUnit());
    }

    public static int makeByte(int i10, int i11) {
        if ((i10 & (-16)) != 0) {
            throw new IllegalArgumentException("bogus lowNibble");
        }
        if ((i11 & (-16)) == 0) {
            return i10 | (i11 << 4);
        }
        throw new IllegalArgumentException("bogus highNibble");
    }

    private static int nibble0(int i10) {
        return i10 & 15;
    }

    private static int nibble1(int i10) {
        return (i10 >> 4) & 15;
    }

    public static int nibble2(int i10) {
        return (i10 >> 8) & 15;
    }

    public static int nibble3(int i10) {
        return (i10 >> 12) & 15;
    }

    public static short unit0(int i10) {
        return (short) i10;
    }

    public static short unit1(int i10) {
        return (short) (i10 >> 16);
    }

    public static short unit2(long j10) {
        return (short) (j10 >> 32);
    }

    public static short unit3(long j10) {
        return (short) (j10 >> 48);
    }

    public abstract DecodedInstruction decode(int i10, CodeInput codeInput) throws EOFException;

    public abstract void encode(DecodedInstruction decodedInstruction, CodeOutput codeOutput);

    public static short unit0(long j10) {
        return (short) j10;
    }

    public static short unit1(long j10) {
        return (short) (j10 >> 16);
    }

    private static short codeUnit(int i10, int i11, int i12, int i13) {
        if ((i10 & (-16)) != 0) {
            throw new IllegalArgumentException("bogus nibble0");
        }
        if ((i11 & (-16)) != 0) {
            throw new IllegalArgumentException("bogus nibble1");
        }
        if ((i12 & (-16)) != 0) {
            throw new IllegalArgumentException("bogus nibble2");
        }
        if ((i13 & (-16)) == 0) {
            return (short) (i10 | (i11 << 4) | (i12 << 8) | (i13 << 12));
        }
        throw new IllegalArgumentException("bogus nibble3");
    }
}
