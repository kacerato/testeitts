package org.brotli.dec;

import android.view.InputDevice;
import com.jme3.audio.openal.EFX;

public final class Decode {
    private static final int CODE_LENGTH_CODES = 18;
    private static final int CODE_LENGTH_REPEAT_CODE = 16;
    private static final int DEFAULT_CODE_LENGTH = 8;
    private static final int DISTANCE_CONTEXT_BITS = 2;
    private static final int HUFFMAN_TABLE_BITS = 8;
    private static final int HUFFMAN_TABLE_MASK = 255;
    private static final int LITERAL_CONTEXT_BITS = 6;
    private static final int NUM_BLOCK_LENGTH_CODES = 26;
    private static final int NUM_DISTANCE_SHORT_CODES = 16;
    private static final int NUM_INSERT_AND_COPY_CODES = 704;
    private static final int NUM_LITERAL_CODES = 256;
    private static final int[] CODE_LENGTH_CODE_ORDER = {1, 2, 3, 4, 0, 5, 17, 6, 16, 7, 8, 9, 10, 11, 12, 13, 14, 15};
    private static final int[] DISTANCE_SHORT_CODE_INDEX_OFFSET = {3, 2, 1, 0, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2};
    private static final int[] DISTANCE_SHORT_CODE_VALUE_OFFSET = {0, 0, 0, 0, -1, 1, -2, 2, -3, 3, -1, 1, -2, 2, -3, 3};
    private static final int[] FIXED_TABLE = {131072, InputDevice.SOURCE_MOUSE_RELATIVE, EFX.ALC_MAX_AUXILIARY_SENDS, 196610, 131072, InputDevice.SOURCE_MOUSE_RELATIVE, EFX.ALC_MAX_AUXILIARY_SENDS, 262145, 131072, InputDevice.SOURCE_MOUSE_RELATIVE, EFX.ALC_MAX_AUXILIARY_SENDS, 196610, 131072, InputDevice.SOURCE_MOUSE_RELATIVE, EFX.ALC_MAX_AUXILIARY_SENDS, 262149};

    private static void copyUncompressedData(State state) {
        BitReader bitReader = state.br;
        byte[] bArr = state.ringBuffer;
        int i10 = state.metaBlockLength;
        if (i10 <= 0) {
            BitReader.reload(bitReader);
            state.runningState = 1;
            return;
        }
        int min = Math.min(state.ringBufferSize - state.pos, i10);
        BitReader.copyBytes(bitReader, bArr, state.pos, min);
        state.metaBlockLength -= min;
        int i11 = state.pos + min;
        state.pos = i11;
        int i12 = state.ringBufferSize;
        if (i11 != i12) {
            BitReader.reload(bitReader);
            state.runningState = 1;
        } else {
            state.nextRunningState = 5;
            state.bytesToWrite = i12;
            state.bytesWritten = 0;
            state.runningState = 12;
        }
    }

    private static void decodeBlockTypeAndLength(State state, int i10) {
        BitReader bitReader = state.br;
        int[] iArr = state.blockTypeRb;
        int i11 = i10 * 2;
        BitReader.fillBitWindow(bitReader);
        int i12 = i10 * 1080;
        int readSymbol = readSymbol(state.blockTypeTrees, i12, bitReader);
        state.blockLength[i10] = readBlockLength(state.blockLenTrees, i12, bitReader);
        int i13 = readSymbol == 1 ? iArr[i11 + 1] + 1 : readSymbol == 0 ? iArr[i11] : readSymbol - 2;
        int i14 = state.numBlockTypes[i10];
        if (i13 >= i14) {
            i13 -= i14;
        }
        int i15 = i11 + 1;
        iArr[i11] = iArr[i15];
        iArr[i15] = i13;
    }

    private static void decodeCommandBlockSwitch(State state) {
        decodeBlockTypeAndLength(state, 1);
        state.treeCommandOffset = state.hGroup1.trees[state.blockTypeRb[3]];
    }

    private static int decodeContextMap(int i10, byte[] bArr, BitReader bitReader) {
        BitReader.readMoreInput(bitReader);
        int decodeVarLenUnsignedByte = decodeVarLenUnsignedByte(bitReader) + 1;
        if (decodeVarLenUnsignedByte == 1) {
            Utils.fillWithZeroes(bArr, 0, i10);
            return decodeVarLenUnsignedByte;
        }
        int readBits = BitReader.readBits(bitReader, 1) == 1 ? BitReader.readBits(bitReader, 4) + 1 : 0;
        int[] iArr = new int[1080];
        readHuffmanCode(decodeVarLenUnsignedByte + readBits, iArr, 0, bitReader);
        int i11 = 0;
        while (i11 < i10) {
            BitReader.readMoreInput(bitReader);
            BitReader.fillBitWindow(bitReader);
            int readSymbol = readSymbol(iArr, 0, bitReader);
            if (readSymbol == 0) {
                bArr[i11] = 0;
            } else if (readSymbol <= readBits) {
                for (int readBits2 = (1 << readSymbol) + BitReader.readBits(bitReader, readSymbol); readBits2 != 0; readBits2--) {
                    if (i11 >= i10) {
                        throw new BrotliRuntimeException("Corrupted context map");
                    }
                    bArr[i11] = 0;
                    i11++;
                }
            } else {
                bArr[i11] = (byte) (readSymbol - readBits);
            }
            i11++;
        }
        if (BitReader.readBits(bitReader, 1) == 1) {
            inverseMoveToFrontTransform(bArr, i10);
        }
        return decodeVarLenUnsignedByte;
    }

    private static void decodeDistanceBlockSwitch(State state) {
        decodeBlockTypeAndLength(state, 2);
        state.distContextMapSlice = state.blockTypeRb[5] << 2;
    }

    private static void decodeLiteralBlockSwitch(State state) {
        decodeBlockTypeAndLength(state, 0);
        int i10 = state.blockTypeRb[1];
        int i11 = i10 << 6;
        state.contextMapSlice = i11;
        int i12 = state.contextMap[i11] & 255;
        state.literalTreeIndex = i12;
        state.literalTree = state.hGroup0.trees[i12];
        byte b10 = state.contextModes[i10];
        int[] iArr = Context.LOOKUP_OFFSETS;
        state.contextLookupOffset1 = iArr[b10];
        state.contextLookupOffset2 = iArr[b10 + 1];
    }

    private static void decodeMetaBlockLength(BitReader bitReader, State state) {
        boolean z10 = BitReader.readBits(bitReader, 1) == 1;
        state.inputEnd = z10;
        state.metaBlockLength = 0;
        state.isUncompressed = false;
        state.isMetadata = false;
        if (!z10 || BitReader.readBits(bitReader, 1) == 0) {
            int readBits = BitReader.readBits(bitReader, 2) + 4;
            if (readBits == 7) {
                state.isMetadata = true;
                if (BitReader.readBits(bitReader, 1) != 0) {
                    throw new BrotliRuntimeException("Corrupted reserved bit");
                }
                int readBits2 = BitReader.readBits(bitReader, 2);
                if (readBits2 == 0) {
                    return;
                }
                for (int i10 = 0; i10 < readBits2; i10++) {
                    int readBits3 = BitReader.readBits(bitReader, 8);
                    if (readBits3 == 0 && i10 + 1 == readBits2 && readBits2 > 1) {
                        throw new BrotliRuntimeException("Exuberant nibble");
                    }
                    state.metaBlockLength = (readBits3 << (i10 * 8)) | state.metaBlockLength;
                }
            } else {
                for (int i11 = 0; i11 < readBits; i11++) {
                    int readBits4 = BitReader.readBits(bitReader, 4);
                    if (readBits4 == 0 && i11 + 1 == readBits && readBits > 4) {
                        throw new BrotliRuntimeException("Exuberant nibble");
                    }
                    state.metaBlockLength = (readBits4 << (i11 * 4)) | state.metaBlockLength;
                }
            }
            state.metaBlockLength++;
            if (state.inputEnd) {
                return;
            }
            state.isUncompressed = BitReader.readBits(bitReader, 1) == 1;
        }
    }

    private static int decodeVarLenUnsignedByte(BitReader bitReader) {
        if (BitReader.readBits(bitReader, 1) == 0) {
            return 0;
        }
        int readBits = BitReader.readBits(bitReader, 3);
        if (readBits == 0) {
            return 1;
        }
        return BitReader.readBits(bitReader, readBits) + (1 << readBits);
    }

    /* JADX WARN: Code restructure failed: missing block: B:184:0x00a6, code lost:
    
        throw new org.brotli.dec.BrotliRuntimeException("Invalid backward reference");
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0029. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0307 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01ef A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void decompress(State state) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = state.runningState;
        if (i16 == 0) {
            throw new IllegalStateException("Can't decompress until initialized");
        }
        if (i16 == 11) {
            throw new IllegalStateException("Can't decompress after close");
        }
        BitReader bitReader = state.br;
        int i17 = state.ringBufferSize - 1;
        byte[] bArr = state.ringBuffer;
        while (true) {
            int i18 = state.runningState;
            if (i18 == 10) {
                if (i18 == 10) {
                    if (state.metaBlockLength < 0) {
                        throw new BrotliRuntimeException("Invalid metablock length");
                    }
                    BitReader.jumpToByteBoundary(bitReader);
                    BitReader.checkHealth(state.br, true);
                    return;
                }
                return;
            }
            if (i18 != 12) {
                int i19 = 0;
                switch (i18) {
                    case 1:
                        if (state.metaBlockLength < 0) {
                            throw new BrotliRuntimeException("Invalid metablock length");
                        }
                        readMetablockInfo(state);
                        i17 = state.ringBufferSize - 1;
                        bArr = state.ringBuffer;
                        break;
                    case 2:
                        readMetablockHuffmanCodesAndContextMaps(state);
                        state.runningState = 3;
                        if (state.metaBlockLength > 0) {
                            state.runningState = 1;
                            break;
                        } else {
                            BitReader.readMoreInput(bitReader);
                            if (state.blockLength[1] == 0) {
                                decodeCommandBlockSwitch(state);
                            }
                            int[] iArr = state.blockLength;
                            iArr[1] = iArr[1] - 1;
                            BitReader.fillBitWindow(bitReader);
                            int readSymbol = readSymbol(state.hGroup1.codes, state.treeCommandOffset, bitReader);
                            int i20 = readSymbol >>> 6;
                            state.distanceCode = 0;
                            if (i20 >= 2) {
                                i20 -= 2;
                                state.distanceCode = -1;
                            }
                            int i21 = Prefix.INSERT_RANGE_LUT[i20] + ((readSymbol >>> 3) & 7);
                            int i22 = Prefix.COPY_RANGE_LUT[i20] + (readSymbol & 7);
                            state.insertLength = Prefix.INSERT_LENGTH_OFFSET[i21] + BitReader.readBits(bitReader, Prefix.INSERT_LENGTH_N_BITS[i21]);
                            state.copyLength = Prefix.COPY_LENGTH_OFFSET[i22] + BitReader.readBits(bitReader, Prefix.COPY_LENGTH_N_BITS[i22]);
                            state.f102452j = 0;
                            state.runningState = 6;
                            if (!state.trivialLiteralContext) {
                                int i23 = state.pos;
                                int i24 = bArr[(i23 - 1) & i17] & 255;
                                int i25 = bArr[(i23 - 2) & i17] & 255;
                                while (true) {
                                    if (state.f102452j < state.insertLength) {
                                        BitReader.readMoreInput(bitReader);
                                        if (state.blockLength[0] == 0) {
                                            decodeLiteralBlockSwitch(state);
                                        }
                                        byte[] bArr2 = state.contextMap;
                                        int i26 = state.contextMapSlice;
                                        int[] iArr2 = Context.LOOKUP;
                                        int i27 = bArr2[i26 + (iArr2[state.contextLookupOffset2 + i25] | iArr2[state.contextLookupOffset1 + i24])] & 255;
                                        int[] iArr3 = state.blockLength;
                                        iArr3[0] = iArr3[0] - 1;
                                        BitReader.fillBitWindow(bitReader);
                                        HuffmanTreeGroup huffmanTreeGroup = state.hGroup0;
                                        int readSymbol2 = readSymbol(huffmanTreeGroup.codes, huffmanTreeGroup.trees[i27], bitReader);
                                        int i28 = state.pos;
                                        bArr[i28] = (byte) readSymbol2;
                                        state.f102452j++;
                                        state.pos = i28 + 1;
                                        if (i28 == i17) {
                                            state.nextRunningState = 6;
                                            state.bytesToWrite = state.ringBufferSize;
                                            state.bytesWritten = 0;
                                            state.runningState = 12;
                                        } else {
                                            int i29 = i24;
                                            i24 = readSymbol2;
                                            i25 = i29;
                                        }
                                    }
                                }
                                if (state.runningState != 6) {
                                    continue;
                                } else {
                                    int i30 = state.metaBlockLength - state.insertLength;
                                    state.metaBlockLength = i30;
                                    if (i30 <= 0) {
                                        state.runningState = 3;
                                        break;
                                    } else {
                                        if (state.distanceCode < 0) {
                                            BitReader.readMoreInput(bitReader);
                                            if (state.blockLength[2] == 0) {
                                                decodeDistanceBlockSwitch(state);
                                            }
                                            int[] iArr4 = state.blockLength;
                                            iArr4[2] = iArr4[2] - 1;
                                            BitReader.fillBitWindow(bitReader);
                                            HuffmanTreeGroup huffmanTreeGroup2 = state.hGroup2;
                                            int[] iArr5 = huffmanTreeGroup2.codes;
                                            int[] iArr6 = huffmanTreeGroup2.trees;
                                            byte[] bArr3 = state.distContextMap;
                                            int i31 = state.distContextMapSlice;
                                            int i32 = state.copyLength;
                                            int readSymbol3 = readSymbol(iArr5, iArr6[bArr3[i31 + (i32 > 4 ? 3 : i32 - 2)] & 255], bitReader);
                                            state.distanceCode = readSymbol3;
                                            int i33 = state.numDirectDistanceCodes;
                                            if (readSymbol3 >= i33) {
                                                int i34 = readSymbol3 - i33;
                                                int i35 = state.distancePostfixMask & i34;
                                                int i36 = i34 >>> state.distancePostfixBits;
                                                state.distanceCode = i36;
                                                int i37 = (i36 >>> 1) + 1;
                                                state.distanceCode = i33 + i35 + ((((((i36 & 1) + 2) << i37) - 4) + BitReader.readBits(bitReader, i37)) << state.distancePostfixBits);
                                            }
                                        }
                                        int translateShortCodes = translateShortCodes(state.distanceCode, state.distRb, state.distRbIdx);
                                        state.distance = translateShortCodes;
                                        if (translateShortCodes < 0) {
                                            throw new BrotliRuntimeException("Negative distance");
                                        }
                                        int i38 = state.maxDistance;
                                        int i39 = state.maxBackwardDistance;
                                        if (i38 == i39 || (i15 = state.pos) >= i39) {
                                            state.maxDistance = i39;
                                        } else {
                                            state.maxDistance = i15;
                                        }
                                        state.copyDst = state.pos;
                                        if (translateShortCodes > state.maxDistance) {
                                            state.runningState = 9;
                                            break;
                                        } else {
                                            if (state.distanceCode > 0) {
                                                int[] iArr7 = state.distRb;
                                                int i40 = state.distRbIdx;
                                                iArr7[i40 & 3] = translateShortCodes;
                                                state.distRbIdx = i40 + 1;
                                            }
                                            if (state.copyLength > state.metaBlockLength) {
                                                throw new BrotliRuntimeException("Invalid backward reference");
                                            }
                                            state.f102452j = 0;
                                            state.runningState = 7;
                                            int i41 = state.pos;
                                            i10 = (i41 - state.distance) & i17;
                                            i11 = state.copyLength - state.f102452j;
                                            if (i10 + i11 < i17 || i41 + i11 >= i17) {
                                                do {
                                                    i12 = state.f102452j;
                                                    if (i12 >= state.copyLength) {
                                                        i13 = state.pos;
                                                        bArr[i13] = bArr[(i13 - state.distance) & i17];
                                                        state.metaBlockLength--;
                                                        state.f102452j = i12 + 1;
                                                        state.pos = i13 + 1;
                                                    }
                                                } while (i13 != i17);
                                                i14 = 7;
                                                state.nextRunningState = 7;
                                                state.bytesToWrite = state.ringBufferSize;
                                                state.bytesWritten = 0;
                                                state.runningState = 12;
                                                if (state.runningState != i14) {
                                                    break;
                                                } else {
                                                    state.runningState = 3;
                                                    break;
                                                }
                                            } else {
                                                while (i19 < i11) {
                                                    bArr[i41] = bArr[i10];
                                                    i19++;
                                                    i41++;
                                                    i10++;
                                                }
                                                state.f102452j += i11;
                                                state.metaBlockLength -= i11;
                                                state.pos += i11;
                                            }
                                            i14 = 7;
                                            if (state.runningState != i14) {
                                            }
                                        }
                                    }
                                }
                            }
                            while (true) {
                                if (state.f102452j >= state.insertLength) {
                                    BitReader.readMoreInput(bitReader);
                                    if (state.blockLength[0] == 0) {
                                        decodeLiteralBlockSwitch(state);
                                    }
                                    int[] iArr8 = state.blockLength;
                                    iArr8[0] = iArr8[0] - 1;
                                    BitReader.fillBitWindow(bitReader);
                                    bArr[state.pos] = (byte) readSymbol(state.hGroup0.codes, state.literalTree, bitReader);
                                    state.f102452j++;
                                    int i42 = state.pos;
                                    state.pos = i42 + 1;
                                    if (i42 == i17) {
                                        state.nextRunningState = 6;
                                        state.bytesToWrite = state.ringBufferSize;
                                        state.bytesWritten = 0;
                                        state.runningState = 12;
                                    }
                                }
                            }
                            if (state.runningState != 6) {
                            }
                        }
                        break;
                    case 3:
                        if (state.metaBlockLength > 0) {
                        }
                        break;
                    case 4:
                        while (state.metaBlockLength > 0) {
                            BitReader.readMoreInput(bitReader);
                            BitReader.readBits(bitReader, 8);
                            state.metaBlockLength--;
                        }
                        state.runningState = 1;
                        break;
                    case 5:
                        copyUncompressedData(state);
                        break;
                    case 6:
                        if (!state.trivialLiteralContext) {
                        }
                        while (true) {
                            if (state.f102452j >= state.insertLength) {
                            }
                        }
                        if (state.runningState != 6) {
                        }
                        break;
                    case 7:
                        int i412 = state.pos;
                        i10 = (i412 - state.distance) & i17;
                        i11 = state.copyLength - state.f102452j;
                        if (i10 + i11 < i17) {
                            break;
                        }
                        do {
                            i12 = state.f102452j;
                            if (i12 >= state.copyLength) {
                            }
                        } while (i13 != i17);
                        i14 = 7;
                        state.nextRunningState = 7;
                        state.bytesToWrite = state.ringBufferSize;
                        state.bytesWritten = 0;
                        state.runningState = 12;
                        if (state.runningState != i14) {
                        }
                        break;
                    case 8:
                        int i43 = state.ringBufferSize;
                        System.arraycopy(bArr, i43, bArr, 0, state.copyDst - i43);
                        state.runningState = 3;
                        break;
                    case 9:
                        int i44 = state.copyLength;
                        if (i44 >= 4 && i44 <= 24) {
                            int i45 = Dictionary.OFFSETS_BY_LENGTH[i44];
                            int i46 = (state.distance - state.maxDistance) - 1;
                            int i47 = Dictionary.SIZE_BITS_BY_LENGTH[i44];
                            int i48 = ((1 << i47) - 1) & i46;
                            int i49 = i46 >>> i47;
                            int i50 = i45 + (i48 * i44);
                            Transform[] transformArr = Transform.TRANSFORMS;
                            if (i49 >= transformArr.length) {
                                throw new BrotliRuntimeException("Invalid backward reference");
                            }
                            int transformDictionaryWord = Transform.transformDictionaryWord(bArr, state.copyDst, Dictionary.getData(), i50, state.copyLength, transformArr[i49]);
                            int i51 = state.copyDst + transformDictionaryWord;
                            state.copyDst = i51;
                            state.pos += transformDictionaryWord;
                            state.metaBlockLength -= transformDictionaryWord;
                            int i52 = state.ringBufferSize;
                            if (i51 < i52) {
                                state.runningState = 3;
                                break;
                            } else {
                                state.nextRunningState = 8;
                                state.bytesToWrite = i52;
                                state.bytesWritten = 0;
                                state.runningState = 12;
                                break;
                            }
                        }
                        break;
                    default:
                        throw new BrotliRuntimeException("Unexpected state " + state.runningState);
                }
            } else {
                if (!writeRingBuffer(state)) {
                    return;
                }
                int i53 = state.pos;
                int i54 = state.maxBackwardDistance;
                if (i53 >= i54) {
                    state.maxDistance = i54;
                }
                state.pos = i53 & i17;
                state.runningState = state.nextRunningState;
            }
        }
    }

    private static void inverseMoveToFrontTransform(byte[] bArr, int i10) {
        int[] iArr = new int[256];
        for (int i11 = 0; i11 < 256; i11++) {
            iArr[i11] = i11;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = bArr[i12] & 255;
            bArr[i12] = (byte) iArr[i13];
            if (i13 != 0) {
                moveToFront(iArr, i13);
            }
        }
    }

    private static void maybeReallocateRingBuffer(State state) {
        int i10;
        int i11 = state.maxRingBufferSize;
        long j10 = i11;
        long j11 = state.expectedTotalSize;
        if (j10 > j11) {
            while (true) {
                int i12 = i11 >> 1;
                if (i12 <= ((int) j11) + state.customDictionary.length) {
                    break;
                } else {
                    i11 = i12;
                }
            }
            if (!state.inputEnd && i11 < 16384 && state.maxRingBufferSize >= 16384) {
                i11 = 16384;
            }
        }
        int i13 = state.ringBufferSize;
        if (i11 <= i13) {
            return;
        }
        byte[] bArr = new byte[i11 + 37];
        byte[] bArr2 = state.ringBuffer;
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr, 0, i13);
        } else {
            byte[] bArr3 = state.customDictionary;
            if (bArr3.length != 0) {
                int length = bArr3.length;
                int i14 = state.maxBackwardDistance;
                if (length > i14) {
                    i10 = length - i14;
                } else {
                    i14 = length;
                    i10 = 0;
                }
                System.arraycopy(bArr3, i10, bArr, 0, i14);
                state.pos = i14;
                state.bytesToIgnore = i14;
            }
        }
        state.ringBuffer = bArr;
        state.ringBufferSize = i11;
    }

    private static void moveToFront(int[] iArr, int i10) {
        int i11 = iArr[i10];
        while (i10 > 0) {
            iArr[i10] = iArr[i10 - 1];
            i10--;
        }
        iArr[0] = i11;
    }

    private static int readBlockLength(int[] iArr, int i10, BitReader bitReader) {
        BitReader.fillBitWindow(bitReader);
        int readSymbol = readSymbol(iArr, i10, bitReader);
        return Prefix.BLOCK_LENGTH_OFFSET[readSymbol] + BitReader.readBits(bitReader, Prefix.BLOCK_LENGTH_N_BITS[readSymbol]);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void readHuffmanCode(int i10, int[] iArr, int i11, BitReader bitReader) {
        int i12;
        int i13;
        int i14;
        BitReader.readMoreInput(bitReader);
        int[] iArr2 = new int[i10];
        int readBits = BitReader.readBits(bitReader, 2);
        boolean z10 = true;
        if (readBits == 1) {
            int i15 = i10 - 1;
            int[] iArr3 = new int[4];
            int readBits2 = BitReader.readBits(bitReader, 2) + 1;
            int i16 = 0;
            while (i15 != 0) {
                i15 >>= 1;
                i16++;
            }
            for (int i17 = 0; i17 < readBits2; i17++) {
                int readBits3 = BitReader.readBits(bitReader, i16) % i10;
                iArr3[i17] = readBits3;
                iArr2[readBits3] = 2;
            }
            iArr2[iArr3[0]] = 1;
            if (readBits2 != 1) {
                if (readBits2 == 2) {
                    int i18 = iArr3[0];
                    int i19 = iArr3[1];
                    r5 = i18 != i19;
                    iArr2[i19] = 1;
                } else if (readBits2 != 3) {
                    int i20 = iArr3[0];
                    int i21 = iArr3[1];
                    boolean z11 = (i20 == i21 || i20 == (i13 = iArr3[2]) || i20 == (i14 = iArr3[3]) || i21 == i13 || i21 == i14 || i13 == i14) ? false : true;
                    if (BitReader.readBits(bitReader, 1) == 1) {
                        iArr2[iArr3[2]] = 3;
                        iArr2[iArr3[3]] = 3;
                    } else {
                        iArr2[iArr3[0]] = 2;
                    }
                    z10 = z11;
                } else {
                    int i22 = iArr3[0];
                    int i23 = iArr3[1];
                    if (i22 != i23 && i22 != (i12 = iArr3[2]) && i23 != i12) {
                        r5 = true;
                    }
                }
            }
            if (z10) {
                throw new BrotliRuntimeException("Can't readHuffmanCode");
            }
            Huffman.buildHuffmanTable(iArr, i11, 8, iArr2, i10);
            return;
        }
        int[] iArr4 = new int[18];
        int i24 = 0;
        int i25 = 32;
        while (readBits < 18 && i25 > 0) {
            int i26 = CODE_LENGTH_CODE_ORDER[readBits];
            BitReader.fillBitWindow(bitReader);
            long j10 = bitReader.accumulator;
            int i27 = bitReader.bitOffset;
            int i28 = FIXED_TABLE[((int) (j10 >>> i27)) & 15];
            bitReader.bitOffset = i27 + (i28 >> 16);
            int i29 = i28 & 65535;
            iArr4[i26] = i29;
            if (i29 != 0) {
                i25 -= 32 >> i29;
                i24++;
            }
            readBits++;
        }
        r5 = i24 == 1 || i25 == 0;
        readHuffmanCodeLengths(iArr4, i10, iArr2, bitReader);
        z10 = r5;
        if (z10) {
        }
    }

    private static void readHuffmanCodeLengths(int[] iArr, int i10, int[] iArr2, BitReader bitReader) {
        int[] iArr3 = new int[32];
        Huffman.buildHuffmanTable(iArr3, 0, 5, iArr, 18);
        int i11 = 8;
        int i12 = 32768;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < i10 && i12 > 0) {
            BitReader.readMoreInput(bitReader);
            BitReader.fillBitWindow(bitReader);
            long j10 = bitReader.accumulator;
            int i16 = bitReader.bitOffset;
            int i17 = iArr3[((int) (j10 >>> i16)) & 31];
            bitReader.bitOffset = i16 + (i17 >> 16);
            int i18 = i17 & 65535;
            if (i18 < 16) {
                int i19 = i13 + 1;
                iArr2[i13] = i18;
                if (i18 != 0) {
                    i12 -= 32768 >> i18;
                    i13 = i19;
                    i11 = i18;
                } else {
                    i13 = i19;
                }
                i15 = 0;
            } else {
                int i20 = i18 - 14;
                int i21 = i18 == 16 ? i11 : 0;
                if (i14 != i21) {
                    i15 = 0;
                    i14 = i21;
                }
                int readBits = (i15 > 0 ? (i15 - 2) << i20 : i15) + BitReader.readBits(bitReader, i20) + 3;
                int i22 = readBits - i15;
                if (i13 + i22 > i10) {
                    throw new BrotliRuntimeException("symbol + repeatDelta > numSymbols");
                }
                int i23 = 0;
                while (i23 < i22) {
                    iArr2[i13] = i14;
                    i23++;
                    i13++;
                }
                if (i14 != 0) {
                    i12 -= i22 << (15 - i14);
                }
                i15 = readBits;
            }
        }
        if (i12 != 0) {
            throw new BrotliRuntimeException("Unused space");
        }
        Utils.fillWithZeroes(iArr2, i13, i10 - i13);
    }

    private static void readMetablockHuffmanCodesAndContextMaps(State state) {
        int i10;
        int[] iArr;
        BitReader bitReader = state.br;
        for (int i11 = 0; i11 < 3; i11++) {
            state.numBlockTypes[i11] = decodeVarLenUnsignedByte(bitReader) + 1;
            state.blockLength[i11] = 268435456;
            int i12 = state.numBlockTypes[i11];
            if (i12 > 1) {
                int i13 = i11 * 1080;
                readHuffmanCode(i12 + 2, state.blockTypeTrees, i13, bitReader);
                readHuffmanCode(26, state.blockLenTrees, i13, bitReader);
                state.blockLength[i11] = readBlockLength(state.blockLenTrees, i13, bitReader);
            }
        }
        BitReader.readMoreInput(bitReader);
        state.distancePostfixBits = BitReader.readBits(bitReader, 2);
        int readBits = BitReader.readBits(bitReader, 4);
        int i14 = state.distancePostfixBits;
        int i15 = (readBits << i14) + 16;
        state.numDirectDistanceCodes = i15;
        state.distancePostfixMask = (1 << i14) - 1;
        int i16 = i15 + (48 << i14);
        state.contextModes = new byte[state.numBlockTypes[0]];
        int i17 = 0;
        while (true) {
            i10 = state.numBlockTypes[0];
            if (i17 >= i10) {
                break;
            }
            int min = Math.min(i17 + 96, i10);
            while (i17 < min) {
                state.contextModes[i17] = (byte) (BitReader.readBits(bitReader, 2) << 1);
                i17++;
            }
            BitReader.readMoreInput(bitReader);
        }
        byte[] bArr = new byte[i10 << 6];
        state.contextMap = bArr;
        int decodeContextMap = decodeContextMap(i10 << 6, bArr, bitReader);
        state.trivialLiteralContext = true;
        int i18 = 0;
        while (true) {
            iArr = state.numBlockTypes;
            if (i18 >= (iArr[0] << 6)) {
                break;
            }
            if (state.contextMap[i18] != (i18 >> 6)) {
                state.trivialLiteralContext = false;
                break;
            }
            i18++;
        }
        int i19 = iArr[2];
        byte[] bArr2 = new byte[i19 << 2];
        state.distContextMap = bArr2;
        int decodeContextMap2 = decodeContextMap(i19 << 2, bArr2, bitReader);
        HuffmanTreeGroup.init(state.hGroup0, 256, decodeContextMap);
        HuffmanTreeGroup.init(state.hGroup1, 704, state.numBlockTypes[1]);
        HuffmanTreeGroup.init(state.hGroup2, i16, decodeContextMap2);
        HuffmanTreeGroup.decode(state.hGroup0, bitReader);
        HuffmanTreeGroup.decode(state.hGroup1, bitReader);
        HuffmanTreeGroup.decode(state.hGroup2, bitReader);
        state.contextMapSlice = 0;
        state.distContextMapSlice = 0;
        int[] iArr2 = Context.LOOKUP_OFFSETS;
        byte b10 = state.contextModes[0];
        state.contextLookupOffset1 = iArr2[b10];
        state.contextLookupOffset2 = iArr2[b10 + 1];
        state.literalTreeIndex = 0;
        state.literalTree = state.hGroup0.trees[0];
        state.treeCommandOffset = state.hGroup1.trees[0];
        int[] iArr3 = state.blockTypeRb;
        iArr3[4] = 1;
        iArr3[2] = 1;
        iArr3[0] = 1;
        iArr3[5] = 0;
        iArr3[3] = 0;
        iArr3[1] = 0;
    }

    private static void readMetablockInfo(State state) {
        BitReader bitReader = state.br;
        if (state.inputEnd) {
            state.nextRunningState = 10;
            state.bytesToWrite = state.pos;
            state.bytesWritten = 0;
            state.runningState = 12;
            return;
        }
        HuffmanTreeGroup huffmanTreeGroup = state.hGroup0;
        huffmanTreeGroup.codes = null;
        huffmanTreeGroup.trees = null;
        HuffmanTreeGroup huffmanTreeGroup2 = state.hGroup1;
        huffmanTreeGroup2.codes = null;
        huffmanTreeGroup2.trees = null;
        HuffmanTreeGroup huffmanTreeGroup3 = state.hGroup2;
        huffmanTreeGroup3.codes = null;
        huffmanTreeGroup3.trees = null;
        BitReader.readMoreInput(bitReader);
        decodeMetaBlockLength(bitReader, state);
        if (state.metaBlockLength != 0 || state.isMetadata) {
            if (state.isUncompressed || state.isMetadata) {
                BitReader.jumpToByteBoundary(bitReader);
                state.runningState = state.isMetadata ? 4 : 5;
            } else {
                state.runningState = 2;
            }
            if (state.isMetadata) {
                return;
            }
            state.expectedTotalSize += state.metaBlockLength;
            if (state.ringBufferSize < state.maxRingBufferSize) {
                maybeReallocateRingBuffer(state);
            }
        }
    }

    private static int readSymbol(int[] iArr, int i10, BitReader bitReader) {
        long j10 = bitReader.accumulator;
        int i11 = bitReader.bitOffset;
        int i12 = (int) (j10 >>> i11);
        int i13 = i10 + (i12 & 255);
        int i14 = iArr[i13];
        int i15 = i14 >> 16;
        int i16 = i14 & 65535;
        if (i15 <= 8) {
            bitReader.bitOffset = i11 + i15;
            return i16;
        }
        int i17 = iArr[i13 + i16 + ((i12 & ((1 << i15) - 1)) >>> 8)];
        bitReader.bitOffset = i11 + (i17 >> 16) + 8;
        return i17 & 65535;
    }

    public static void setCustomDictionary(State state, byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        state.customDictionary = bArr;
    }

    private static int translateShortCodes(int i10, int[] iArr, int i11) {
        return i10 < 16 ? iArr[(i11 + DISTANCE_SHORT_CODE_INDEX_OFFSET[i10]) & 3] + DISTANCE_SHORT_CODE_VALUE_OFFSET[i10] : i10 - 15;
    }

    private static boolean writeRingBuffer(State state) {
        int i10 = state.bytesToIgnore;
        if (i10 != 0) {
            state.bytesWritten += i10;
            state.bytesToIgnore = 0;
        }
        int min = Math.min(state.outputLength - state.outputUsed, state.bytesToWrite - state.bytesWritten);
        if (min != 0) {
            System.arraycopy(state.ringBuffer, state.bytesWritten, state.output, state.outputOffset + state.outputUsed, min);
            state.outputUsed += min;
            state.bytesWritten += min;
        }
        return state.outputUsed < state.outputLength;
    }
}
