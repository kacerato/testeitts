package Uc;

import java.io.IOException;

public final class a {

    public static final C0717a f25998a = new C0717a(16, 8, 0, 24);

    public static final C0717a f25999b = new C0717a(0, 8, 16, 24);

    public static final int f26000c = 1;

    public static final int f26001d = 2;

    public static final int f26002e = 3;

    public static final int f26003f = 9;

    public static final int f26004g = 10;

    public static final int f26005h = 11;

    public static final int f26006i = 16;

    public static final int f26007j = 32;

    public static final class C0717a {

        public int f26008a;

        public int f26009b;

        public int f26010c;

        public int f26011d;

        public C0717a(int redShift, int greenShift, int blueShift, int alphaShift) {
            this.f26008a = redShift;
            this.f26009b = greenShift;
            this.f26010c = blueShift;
            this.f26011d = alphaShift;
        }
    }

    public static int[] a(int width, int height, int depth, byte[] bytes, int offset, byte[] palette, int colormapOrigin, int descriptor, C0717a order) throws IOException {
        int[] iArr;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18 = order.f26008a;
        int i19 = order.f26009b;
        int i20 = order.f26010c;
        int i21 = order.f26011d;
        if (depth == 24) {
            iArr = new int[width * height];
            if ((descriptor & 16) != 0) {
                if ((descriptor & 32) != 0) {
                    for (int i22 = 0; i22 < height; i22++) {
                        for (int i23 = 0; i23 < width; i23++) {
                            int i24 = width * i22;
                            int i25 = bytes[offset + i24 + i23] & (255 - colormapOrigin);
                            if (i25 >= 0) {
                                int i26 = i25 * 3;
                                i13 = ((palette[i26 + 20] & 255) << i18) | ((palette[i26 + 19] & 255) << i19) | ((palette[i26 + 18] & 255) << i20) | (255 << i21);
                            } else {
                                i13 = -1;
                            }
                            iArr[i24 + ((width - i23) - 1)] = i13;
                        }
                    }
                } else {
                    for (int i27 = 0; i27 < height; i27++) {
                        for (int i28 = 0; i28 < width; i28++) {
                            int i29 = bytes[offset + (width * i27) + i28] & (255 - colormapOrigin);
                            if (i29 >= 0) {
                                int i30 = i29 * 3;
                                i12 = ((palette[i30 + 20] & 255) << i18) | ((palette[i30 + 19] & 255) << i19) | ((palette[i30 + 18] & 255) << i20) | (255 << i21);
                            } else {
                                i12 = -1;
                            }
                            iArr[(((height - i27) - 1) * width) + ((width - i28) - 1)] = i12;
                        }
                    }
                }
            } else if ((descriptor & 32) != 0) {
                for (int i31 = 0; i31 < height; i31++) {
                    for (int i32 = 0; i32 < width; i32++) {
                        int i33 = width * i31;
                        int i34 = bytes[offset + i33 + i32] & (255 - colormapOrigin);
                        if (i34 >= 0) {
                            int i35 = i34 * 3;
                            i11 = ((palette[i35 + 20] & 255) << i18) | ((palette[i35 + 19] & 255) << i19) | ((palette[i35 + 18] & 255) << i20) | (255 << i21);
                        } else {
                            i11 = -1;
                        }
                        iArr[i33 + i32] = i11;
                    }
                }
            } else {
                for (int i36 = 0; i36 < height; i36++) {
                    for (int i37 = 0; i37 < width; i37++) {
                        int i38 = bytes[offset + (width * i36) + i37] & (255 - colormapOrigin);
                        if (i38 >= 0) {
                            int i39 = i38 * 3;
                            i10 = ((palette[i39 + 20] & 255) << i18) | ((palette[i39 + 19] & 255) << i19) | ((palette[i39 + 18] & 255) << i20) | (255 << i21);
                        } else {
                            i10 = -1;
                        }
                        iArr[(((height - i36) - 1) * width) + i37] = i10;
                    }
                }
            }
        } else {
            if (depth != 32) {
                throw new IOException("Unsupported depth:" + depth);
            }
            iArr = new int[width * height];
            if ((descriptor & 16) != 0) {
                if ((descriptor & 32) != 0) {
                    for (int i40 = 0; i40 < height; i40++) {
                        for (int i41 = 0; i41 < width; i41++) {
                            int i42 = width * i40;
                            int i43 = bytes[offset + i42 + i41] & (255 - colormapOrigin);
                            if (i43 >= 0) {
                                int i44 = i43 * 4;
                                int i45 = palette[i44 + 18] & 255;
                                i17 = ((palette[i44 + 19] & 255) << i19) | ((palette[i44 + 20] & 255) << i18) | (i45 << i20) | ((palette[i44 + 21] & 255) << i21);
                            } else {
                                i17 = -1;
                            }
                            iArr[i42 + ((width - i41) - 1)] = i17;
                        }
                    }
                } else {
                    for (int i46 = 0; i46 < height; i46++) {
                        for (int i47 = 0; i47 < width; i47++) {
                            int i48 = bytes[offset + (width * i46) + i47] & (255 - colormapOrigin);
                            if (i48 >= 0) {
                                int i49 = i48 * 4;
                                int i50 = palette[i49 + 18] & 255;
                                int i51 = palette[i49 + 19] & 255;
                                int i52 = palette[i49 + 20] & 255;
                                int i53 = (palette[i49 + 21] & 255) << i21;
                                i16 = i53 | (i50 << i20) | (i51 << i19) | (i52 << i18);
                            } else {
                                i16 = -1;
                            }
                            iArr[(((height - i46) - 1) * width) + ((width - i47) - 1)] = i16;
                        }
                    }
                }
            } else if ((descriptor & 32) != 0) {
                for (int i54 = 0; i54 < height; i54++) {
                    for (int i55 = 0; i55 < width; i55++) {
                        int i56 = width * i54;
                        int i57 = bytes[offset + i56 + i55] & (255 - colormapOrigin);
                        if (i57 >= 0) {
                            int i58 = i57 * 4;
                            int i59 = palette[i58 + 18] & 255;
                            int i60 = palette[i58 + 19] & 255;
                            int i61 = palette[i58 + 20] & 255;
                            int i62 = (palette[i58 + 21] & 255) << i21;
                            i15 = i62 | (i59 << i20) | (i60 << i19) | (i61 << i18);
                        } else {
                            i15 = -1;
                        }
                        iArr[i56 + i55] = i15;
                    }
                }
            } else {
                for (int i63 = 0; i63 < height; i63++) {
                    for (int i64 = 0; i64 < width; i64++) {
                        int i65 = bytes[offset + (width * i63) + i64] & (255 - colormapOrigin);
                        if (i65 >= 0) {
                            int i66 = i65 * 4;
                            int i67 = palette[i66 + 18] & 255;
                            int i68 = palette[i66 + 19] & 255;
                            int i69 = palette[i66 + 20] & 255;
                            int i70 = (palette[i66 + 21] & 255) << i21;
                            i14 = i70 | (i67 << i20) | (i68 << i19) | (i69 << i18);
                        } else {
                            i14 = -1;
                        }
                        iArr[(((height - i63) - 1) * width) + i64] = i14;
                    }
                }
            }
        }
        return iArr;
    }

    public static int[] b(int width, int height, int depth, byte[] bytes, int offset, int descriptor, C0717a order) throws IOException {
        int[] iArr;
        int i10 = order.f26008a;
        int i11 = order.f26009b;
        int i12 = order.f26010c;
        int i13 = order.f26011d;
        if (depth == 8) {
            iArr = new int[width * height];
            if ((descriptor & 16) != 0) {
                if ((descriptor & 32) != 0) {
                    for (int i14 = 0; i14 < height; i14++) {
                        for (int i15 = 0; i15 < width; i15++) {
                            int i16 = width * i14;
                            int i17 = bytes[offset + i16 + i15] & 255;
                            iArr[i16 + ((width - i15) - 1)] = (i17 << i12) | (i17 << i10) | (i17 << i11) | (255 << i13);
                        }
                    }
                } else {
                    for (int i18 = 0; i18 < height; i18++) {
                        for (int i19 = 0; i19 < width; i19++) {
                            int i20 = bytes[offset + (width * i18) + i19] & 255;
                            iArr[(((height - i18) - 1) * width) + ((width - i19) - 1)] = (i20 << i12) | (i20 << i10) | (i20 << i11) | (255 << i13);
                        }
                    }
                }
            } else if ((descriptor & 32) != 0) {
                for (int i21 = 0; i21 < height; i21++) {
                    for (int i22 = 0; i22 < width; i22++) {
                        int i23 = width * i21;
                        int i24 = bytes[offset + i23 + i22] & 255;
                        iArr[i23 + i22] = (i24 << i12) | (i24 << i10) | (i24 << i11) | (255 << i13);
                    }
                }
            } else {
                for (int i25 = 0; i25 < height; i25++) {
                    for (int i26 = 0; i26 < width; i26++) {
                        int i27 = bytes[offset + (width * i25) + i26] & 255;
                        iArr[(((height - i25) - 1) * width) + i26] = (i27 << i12) | (i27 << i10) | (i27 << i11) | (255 << i13);
                    }
                }
            }
        } else {
            if (depth != 16) {
                throw new IOException("Unsupported depth:" + depth);
            }
            iArr = new int[width * height];
            if ((descriptor & 16) != 0) {
                if ((descriptor & 32) != 0) {
                    for (int i28 = 0; i28 < height; i28++) {
                        for (int i29 = 0; i29 < width; i29++) {
                            int i30 = offset + (width * 2 * i28) + (i29 * 2);
                            int i31 = bytes[i30] & 255;
                            iArr[(width * i28) + ((width - i29) - 1)] = ((bytes[i30 + 1] & 255) << i13) | (i31 << i12) | (i31 << i10) | (i31 << i11);
                        }
                    }
                } else {
                    for (int i32 = 0; i32 < height; i32++) {
                        for (int i33 = 0; i33 < width; i33++) {
                            int i34 = offset + (width * 2 * i32) + (i33 * 2);
                            int i35 = bytes[i34] & 255;
                            iArr[(((height - i32) - 1) * width) + ((width - i33) - 1)] = ((bytes[i34 + 1] & 255) << i13) | (i35 << i12) | (i35 << i10) | (i35 << i11);
                        }
                    }
                }
            } else if ((descriptor & 32) != 0) {
                for (int i36 = 0; i36 < height; i36++) {
                    for (int i37 = 0; i37 < width; i37++) {
                        int i38 = offset + (width * 2 * i36) + (i37 * 2);
                        int i39 = bytes[i38] & 255;
                        iArr[(width * i36) + i37] = ((bytes[i38 + 1] & 255) << i13) | (i39 << i12) | (i39 << i10) | (i39 << i11);
                    }
                }
            } else {
                for (int i40 = 0; i40 < height; i40++) {
                    for (int i41 = 0; i41 < width; i41++) {
                        int i42 = offset + (width * 2 * i40) + (i41 * 2);
                        int i43 = bytes[i42] & 255;
                        iArr[(((height - i40) - 1) * width) + i41] = ((bytes[i42 + 1] & 255) << i13) | (i43 << i12) | (i43 << i10) | (i43 << i11);
                    }
                }
            }
        }
        return iArr;
    }

    public static int[] c(int width, int height, int depth, byte[] bytes, int offset, int descriptor, C0717a order) throws IOException {
        int[] iArr;
        int i10 = order.f26008a;
        int i11 = order.f26009b;
        int i12 = order.f26010c;
        int i13 = order.f26011d;
        if (depth == 24) {
            iArr = new int[width * height];
            if ((descriptor & 16) != 0) {
                if ((descriptor & 32) != 0) {
                    for (int i14 = 0; i14 < height; i14++) {
                        for (int i15 = 0; i15 < width; i15++) {
                            int i16 = offset + (width * 3 * i14) + (i15 * 3);
                            iArr[(width * i14) + ((width - i15) - 1)] = ((bytes[i16 + 2] & 255) << i10) | ((bytes[i16 + 1] & 255) << i11) | ((bytes[i16] & 255) << i12) | (255 << i13);
                        }
                    }
                } else {
                    for (int i17 = 0; i17 < height; i17++) {
                        for (int i18 = 0; i18 < width; i18++) {
                            int i19 = offset + (width * 3 * i17) + (i18 * 3);
                            iArr[(((height - i17) - 1) * width) + ((width - i18) - 1)] = ((bytes[i19 + 2] & 255) << i10) | ((bytes[i19 + 1] & 255) << i11) | ((bytes[i19] & 255) << i12) | (255 << i13);
                        }
                    }
                }
            } else if ((descriptor & 32) != 0) {
                for (int i20 = 0; i20 < height; i20++) {
                    for (int i21 = 0; i21 < width; i21++) {
                        int i22 = offset + (width * 3 * i20) + (i21 * 3);
                        iArr[(width * i20) + i21] = ((bytes[i22 + 2] & 255) << i10) | ((bytes[i22 + 1] & 255) << i11) | ((bytes[i22] & 255) << i12) | (255 << i13);
                    }
                }
            } else {
                for (int i23 = 0; i23 < height; i23++) {
                    for (int i24 = 0; i24 < width; i24++) {
                        int i25 = offset + (width * 3 * i23) + (i24 * 3);
                        iArr[(((height - i23) - 1) * width) + i24] = ((bytes[i25 + 2] & 255) << i10) | ((bytes[i25 + 1] & 255) << i11) | ((bytes[i25] & 255) << i12) | (255 << i13);
                    }
                }
            }
        } else {
            if (depth != 32) {
                throw new IOException("Unsupported depth:" + depth);
            }
            iArr = new int[width * height];
            if ((descriptor & 16) != 0) {
                if ((descriptor & 32) != 0) {
                    for (int i26 = 0; i26 < height; i26++) {
                        for (int i27 = 0; i27 < width; i27++) {
                            int i28 = offset + (width * 4 * i26) + (i27 * 4);
                            int i29 = bytes[i28] & 255;
                            int i30 = bytes[i28 + 1] & 255;
                            int i31 = bytes[i28 + 2] & 255;
                            int i32 = (bytes[i28 + 3] & 255) << i13;
                            iArr[(width * i26) + ((width - i27) - 1)] = i32 | (i29 << i12) | (i30 << i11) | (i31 << i10);
                        }
                    }
                } else {
                    for (int i33 = 0; i33 < height; i33++) {
                        for (int i34 = 0; i34 < width; i34++) {
                            int i35 = offset + (width * 4 * i33) + (i34 * 4);
                            int i36 = bytes[i35] & 255;
                            int i37 = bytes[i35 + 1] & 255;
                            int i38 = bytes[i35 + 2] & 255;
                            int i39 = (bytes[i35 + 3] & 255) << i13;
                            iArr[(((height - i33) - 1) * width) + ((width - i34) - 1)] = i39 | (i36 << i12) | (i37 << i11) | (i38 << i10);
                        }
                    }
                }
            } else if ((descriptor & 32) != 0) {
                for (int i40 = 0; i40 < height; i40++) {
                    for (int i41 = 0; i41 < width; i41++) {
                        int i42 = offset + (width * 4 * i40) + (i41 * 4);
                        int i43 = bytes[i42] & 255;
                        int i44 = bytes[i42 + 1] & 255;
                        int i45 = bytes[i42 + 2] & 255;
                        int i46 = (bytes[i42 + 3] & 255) << i13;
                        iArr[(width * i40) + i41] = i46 | (i43 << i12) | (i44 << i11) | (i45 << i10);
                    }
                }
            } else {
                for (int i47 = 0; i47 < height; i47++) {
                    for (int i48 = 0; i48 < width; i48++) {
                        int i49 = offset + (width * 4 * i47) + (i48 * 4);
                        int i50 = bytes[i49] & 255;
                        int i51 = bytes[i49 + 1] & 255;
                        int i52 = bytes[i49 + 2] & 255;
                        int i53 = (bytes[i49 + 3] & 255) << i13;
                        iArr[(((height - i47) - 1) * width) + i48] = i53 | (i50 << i12) | (i51 << i11) | (i52 << i10);
                    }
                }
            }
        }
        return iArr;
    }

    public static byte[] d(int width, int height, int depth, byte[] buffer, int offset) {
        int i10 = depth / 8;
        byte[] bArr = new byte[i10];
        int i11 = width * i10 * height;
        byte[] bArr2 = new byte[i11];
        int i12 = 0;
        while (i12 < i11) {
            int i13 = offset + 1;
            byte b10 = buffer[offset];
            int i14 = b10 & 255;
            if ((b10 & 128) != 0) {
                int i15 = 0;
                while (i15 < i10) {
                    bArr[i15] = buffer[i13];
                    i15++;
                    i13++;
                }
                int i16 = (b10 & Byte.MAX_VALUE) + 1;
                for (int i17 = 0; i17 < i16; i17++) {
                    int i18 = 0;
                    while (i18 < i10) {
                        bArr2[i12] = bArr[i18];
                        i18++;
                        i12++;
                    }
                }
            } else {
                int i19 = (i14 + 1) * i10;
                int i20 = 0;
                while (i20 < i19) {
                    bArr2[i12] = buffer[i13];
                    i20++;
                    i12++;
                    i13++;
                }
            }
            offset = i13;
        }
        return bArr2;
    }

    public static int e(byte[] buffer) {
        return ((buffer[15] & 255) << 8) | (buffer[14] & 255);
    }

    public static int f(byte[] buffer) {
        return ((buffer[13] & 255) << 8) | (buffer[12] & 255);
    }

    public static int[] g(byte[] buffer, C0717a order) throws IOException {
        int i10 = buffer[2] & 255;
        int i11 = (buffer[3] & 255) | ((buffer[4] & 255) << 8);
        int i12 = (buffer[5] & 255) | ((buffer[6] & 255) << 8);
        int i13 = buffer[7] & 255;
        int f10 = f(buffer);
        int e10 = e(buffer);
        int i14 = buffer[16] & 255;
        int i15 = buffer[17] & 255;
        if (i10 == 1) {
            return a(f10, e10, i13, buffer, ((i13 / 8) * i12) + 18, buffer, i11, i15, order);
        }
        if (i10 == 2) {
            return c(f10, e10, i14, buffer, 18, i15, order);
        }
        if (i10 == 3) {
            return b(f10, e10, i14, buffer, 18, i15, order);
        }
        switch (i10) {
            case 9:
                return a(f10, e10, i13, d(f10, e10, i14, buffer, ((i13 / 8) * i12) + 18), 0, buffer, i11, i15, order);
            case 10:
                return c(f10, e10, i14, d(f10, e10, i14, buffer, 18), 0, i15, order);
            case 11:
                return b(f10, e10, i14, d(f10, e10, i14, buffer, 18), 0, i15, order);
            default:
                throw new IOException("Unsupported image type: " + i10);
        }
    }
}
