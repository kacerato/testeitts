package org.apache.commons.math3.random;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;

public class SobolSequenceGenerator implements RandomVectorGenerator {
    private static final int BITS = 52;
    private static final String FILE_CHARSET = "US-ASCII";
    private static final int MAX_DIMENSION = 1000;
    private static final String RESOURCE_NAME = "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000";
    private static final double SCALE = FastMath.pow(2.0d, 52);
    private int count = 0;
    private final int dimension;
    private final long[][] direction;

    private final long[] f100310x;

    public SobolSequenceGenerator(int i10) throws OutOfRangeException {
        if (i10 >= 1 && i10 <= 1000) {
            InputStream resourceAsStream = getClass().getResourceAsStream(RESOURCE_NAME);
            if (resourceAsStream != null) {
                this.dimension = i10;
                this.direction = (long[][]) Array.newInstance(Long.TYPE, i10, 53);
                this.f100310x = new long[i10];
                try {
                    try {
                        initFromStream(resourceAsStream);
                        try {
                            resourceAsStream.close();
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    } catch (IOException unused2) {
                        throw new MathInternalError();
                    } catch (MathParseException unused3) {
                        throw new MathInternalError();
                    }
                } catch (Throwable th2) {
                    try {
                        resourceAsStream.close();
                    } catch (IOException unused4) {
                    }
                    throw th2;
                }
            }
            throw new MathInternalError();
        }
        throw new OutOfRangeException(Integer.valueOf(i10), 1, 1000);
    }

    private void initDirectionVector(int i10, int i11, int[] iArr) {
        int length = iArr.length;
        int i12 = length - 1;
        for (int i13 = 1; i13 <= i12; i13++) {
            this.direction[i10][i13] = iArr[i13] << (52 - i13);
        }
        for (int i14 = length; i14 <= 52; i14++) {
            long[] jArr = this.direction[i10];
            long j10 = jArr[i14 - i12];
            jArr[i14] = j10 ^ (j10 >> i12);
            int i15 = 1;
            while (true) {
                if (i15 <= length - 2) {
                    long[] jArr2 = this.direction[i10];
                    jArr2[i14] = jArr2[i14] ^ (((i11 >> (r4 - i15)) & 1) * jArr2[i14 - i15]);
                    i15++;
                }
            }
        }
    }

    private int initFromStream(InputStream inputStream) throws MathParseException, IOException {
        for (int i10 = 1; i10 <= 52; i10++) {
            this.direction[0][i10] = 1 << (52 - i10);
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("US-ASCII")));
        try {
            bufferedReader.readLine();
            int i11 = -1;
            int i12 = 2;
            int i13 = 1;
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    return i11;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(readLine, " ");
                try {
                    int parseInt = Integer.parseInt(stringTokenizer.nextToken());
                    if (parseInt >= 2 && parseInt <= this.dimension) {
                        int parseInt2 = Integer.parseInt(stringTokenizer.nextToken());
                        int parseInt3 = Integer.parseInt(stringTokenizer.nextToken());
                        int[] iArr = new int[parseInt2 + 1];
                        for (int i14 = 1; i14 <= parseInt2; i14++) {
                            iArr[i14] = Integer.parseInt(stringTokenizer.nextToken());
                        }
                        initDirectionVector(i13, parseInt3, iArr);
                        i13++;
                    }
                    if (parseInt > this.dimension) {
                        bufferedReader.close();
                        return parseInt;
                    }
                    i12++;
                    i11 = parseInt;
                } catch (NumberFormatException unused) {
                    throw new MathParseException(readLine, i12);
                } catch (NoSuchElementException unused2) {
                    throw new MathParseException(readLine, i12);
                }
            }
        } catch (Throwable th2) {
            bufferedReader.close();
            throw th2;
        }
    }

    public int getNextIndex() {
        return this.count;
    }

    @Override
    public double[] nextVector() {
        double[] dArr = new double[this.dimension];
        int i10 = this.count;
        if (i10 == 0) {
            this.count = i10 + 1;
            return dArr;
        }
        int i11 = i10 - 1;
        int i12 = 1;
        while ((i11 & 1) == 1) {
            i11 >>= 1;
            i12++;
        }
        for (int i13 = 0; i13 < this.dimension; i13++) {
            long[] jArr = this.f100310x;
            long j10 = jArr[i13] ^ this.direction[i13][i12];
            jArr[i13] = j10;
            dArr[i13] = j10 / SCALE;
        }
        this.count++;
        return dArr;
    }

    public double[] skipTo(int i10) throws NotPositiveException {
        if (i10 == 0) {
            Arrays.fill(this.f100310x, 0L);
        } else {
            int i11 = i10 - 1;
            long j10 = i11 ^ (i11 >> 1);
            for (int i12 = 0; i12 < this.dimension; i12++) {
                long j11 = 0;
                for (int i13 = 1; i13 <= 52; i13++) {
                    long j12 = j10 >> (i13 - 1);
                    if (j12 == 0) {
                        break;
                    }
                    j11 ^= (j12 & 1) * this.direction[i12][i13];
                }
                this.f100310x[i12] = j11;
            }
        }
        this.count = i10;
        return nextVector();
    }

    public SobolSequenceGenerator(int i10, InputStream inputStream) throws NotStrictlyPositiveException, MathParseException, IOException {
        if (i10 >= 1) {
            this.dimension = i10;
            this.direction = (long[][]) Array.newInstance(Long.TYPE, i10, 53);
            this.f100310x = new long[i10];
            int initFromStream = initFromStream(inputStream);
            if (initFromStream < i10) {
                throw new OutOfRangeException(Integer.valueOf(i10), 1, Integer.valueOf(initFromStream));
            }
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i10));
    }
}
