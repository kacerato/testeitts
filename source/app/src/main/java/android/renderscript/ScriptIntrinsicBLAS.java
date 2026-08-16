package android.renderscript;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/ScriptIntrinsicBLAS.class
 */
public final class ScriptIntrinsicBLAS extends ScriptIntrinsic {
    public static final int CONJ_TRANSPOSE = 113;
    public static final int LEFT = 141;
    public static final int LOWER = 122;
    public static final int NON_UNIT = 131;
    public static final int NO_TRANSPOSE = 111;
    public static final int RIGHT = 142;
    public static final int TRANSPOSE = 112;
    public static final int UNIT = 132;
    public static final int UPPER = 121;

    ScriptIntrinsicBLAS() {
        throw new RuntimeException("Stub!");
    }

    public static ScriptIntrinsicBLAS create(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }

    public void SGEMV(int TransA, float alpha, Allocation A10, Allocation X10, int incX, float beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void DGEMV(int TransA, double alpha, Allocation A10, Allocation X10, int incX, double beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void CGEMV(int TransA, Float2 alpha, Allocation A10, Allocation X10, int incX, Float2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void ZGEMV(int TransA, Double2 alpha, Allocation A10, Allocation X10, int incX, Double2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void SGBMV(int TransA, int KL, int KU, float alpha, Allocation A10, Allocation X10, int incX, float beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void DGBMV(int TransA, int KL, int KU, double alpha, Allocation A10, Allocation X10, int incX, double beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void CGBMV(int TransA, int KL, int KU, Float2 alpha, Allocation A10, Allocation X10, int incX, Float2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void ZGBMV(int TransA, int KL, int KU, Double2 alpha, Allocation A10, Allocation X10, int incX, Double2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void STRMV(int Uplo, int TransA, int Diag, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void DTRMV(int Uplo, int TransA, int Diag, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void CTRMV(int Uplo, int TransA, int Diag, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void ZTRMV(int Uplo, int TransA, int Diag, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void STBMV(int Uplo, int TransA, int Diag, int K10, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void DTBMV(int Uplo, int TransA, int Diag, int K10, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void CTBMV(int Uplo, int TransA, int Diag, int K10, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void ZTBMV(int Uplo, int TransA, int Diag, int K10, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void STPMV(int Uplo, int TransA, int Diag, Allocation Ap, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void DTPMV(int Uplo, int TransA, int Diag, Allocation Ap, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void CTPMV(int Uplo, int TransA, int Diag, Allocation Ap, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void ZTPMV(int Uplo, int TransA, int Diag, Allocation Ap, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void STRSV(int Uplo, int TransA, int Diag, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void DTRSV(int Uplo, int TransA, int Diag, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void CTRSV(int Uplo, int TransA, int Diag, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void ZTRSV(int Uplo, int TransA, int Diag, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void STBSV(int Uplo, int TransA, int Diag, int K10, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void DTBSV(int Uplo, int TransA, int Diag, int K10, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void CTBSV(int Uplo, int TransA, int Diag, int K10, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void ZTBSV(int Uplo, int TransA, int Diag, int K10, Allocation A10, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void STPSV(int Uplo, int TransA, int Diag, Allocation Ap, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void DTPSV(int Uplo, int TransA, int Diag, Allocation Ap, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void CTPSV(int Uplo, int TransA, int Diag, Allocation Ap, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void ZTPSV(int Uplo, int TransA, int Diag, Allocation Ap, Allocation X10, int incX) {
        throw new RuntimeException("Stub!");
    }

    public void SSYMV(int Uplo, float alpha, Allocation A10, Allocation X10, int incX, float beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void SSBMV(int Uplo, int K10, float alpha, Allocation A10, Allocation X10, int incX, float beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void SSPMV(int Uplo, float alpha, Allocation Ap, Allocation X10, int incX, float beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void SGER(float alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void SSYR(int Uplo, float alpha, Allocation X10, int incX, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void SSPR(int Uplo, float alpha, Allocation X10, int incX, Allocation Ap) {
        throw new RuntimeException("Stub!");
    }

    public void SSYR2(int Uplo, float alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void SSPR2(int Uplo, float alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation Ap) {
        throw new RuntimeException("Stub!");
    }

    public void DSYMV(int Uplo, double alpha, Allocation A10, Allocation X10, int incX, double beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void DSBMV(int Uplo, int K10, double alpha, Allocation A10, Allocation X10, int incX, double beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void DSPMV(int Uplo, double alpha, Allocation Ap, Allocation X10, int incX, double beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void DGER(double alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void DSYR(int Uplo, double alpha, Allocation X10, int incX, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void DSPR(int Uplo, double alpha, Allocation X10, int incX, Allocation Ap) {
        throw new RuntimeException("Stub!");
    }

    public void DSYR2(int Uplo, double alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void DSPR2(int Uplo, double alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation Ap) {
        throw new RuntimeException("Stub!");
    }

    public void CHEMV(int Uplo, Float2 alpha, Allocation A10, Allocation X10, int incX, Float2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void CHBMV(int Uplo, int K10, Float2 alpha, Allocation A10, Allocation X10, int incX, Float2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void CHPMV(int Uplo, Float2 alpha, Allocation Ap, Allocation X10, int incX, Float2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void CGERU(Float2 alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void CGERC(Float2 alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void CHER(int Uplo, float alpha, Allocation X10, int incX, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void CHPR(int Uplo, float alpha, Allocation X10, int incX, Allocation Ap) {
        throw new RuntimeException("Stub!");
    }

    public void CHER2(int Uplo, Float2 alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void CHPR2(int Uplo, Float2 alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation Ap) {
        throw new RuntimeException("Stub!");
    }

    public void ZHEMV(int Uplo, Double2 alpha, Allocation A10, Allocation X10, int incX, Double2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void ZHBMV(int Uplo, int K10, Double2 alpha, Allocation A10, Allocation X10, int incX, Double2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void ZHPMV(int Uplo, Double2 alpha, Allocation Ap, Allocation X10, int incX, Double2 beta, Allocation Y10, int incY) {
        throw new RuntimeException("Stub!");
    }

    public void ZGERU(Double2 alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void ZGERC(Double2 alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void ZHER(int Uplo, double alpha, Allocation X10, int incX, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void ZHPR(int Uplo, double alpha, Allocation X10, int incX, Allocation Ap) {
        throw new RuntimeException("Stub!");
    }

    public void ZHER2(int Uplo, Double2 alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation A10) {
        throw new RuntimeException("Stub!");
    }

    public void ZHPR2(int Uplo, Double2 alpha, Allocation X10, int incX, Allocation Y10, int incY, Allocation Ap) {
        throw new RuntimeException("Stub!");
    }

    public void SGEMM(int TransA, int TransB, float alpha, Allocation A10, Allocation B10, float beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void DGEMM(int TransA, int TransB, double alpha, Allocation A10, Allocation B10, double beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void CGEMM(int TransA, int TransB, Float2 alpha, Allocation A10, Allocation B10, Float2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void ZGEMM(int TransA, int TransB, Double2 alpha, Allocation A10, Allocation B10, Double2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void SSYMM(int Side, int Uplo, float alpha, Allocation A10, Allocation B10, float beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void DSYMM(int Side, int Uplo, double alpha, Allocation A10, Allocation B10, double beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void CSYMM(int Side, int Uplo, Float2 alpha, Allocation A10, Allocation B10, Float2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void ZSYMM(int Side, int Uplo, Double2 alpha, Allocation A10, Allocation B10, Double2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void SSYRK(int Uplo, int Trans, float alpha, Allocation A10, float beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void DSYRK(int Uplo, int Trans, double alpha, Allocation A10, double beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void CSYRK(int Uplo, int Trans, Float2 alpha, Allocation A10, Float2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void ZSYRK(int Uplo, int Trans, Double2 alpha, Allocation A10, Double2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void SSYR2K(int Uplo, int Trans, float alpha, Allocation A10, Allocation B10, float beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void DSYR2K(int Uplo, int Trans, double alpha, Allocation A10, Allocation B10, double beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void CSYR2K(int Uplo, int Trans, Float2 alpha, Allocation A10, Allocation B10, Float2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void ZSYR2K(int Uplo, int Trans, Double2 alpha, Allocation A10, Allocation B10, Double2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void STRMM(int Side, int Uplo, int TransA, int Diag, float alpha, Allocation A10, Allocation B10) {
        throw new RuntimeException("Stub!");
    }

    public void DTRMM(int Side, int Uplo, int TransA, int Diag, double alpha, Allocation A10, Allocation B10) {
        throw new RuntimeException("Stub!");
    }

    public void CTRMM(int Side, int Uplo, int TransA, int Diag, Float2 alpha, Allocation A10, Allocation B10) {
        throw new RuntimeException("Stub!");
    }

    public void ZTRMM(int Side, int Uplo, int TransA, int Diag, Double2 alpha, Allocation A10, Allocation B10) {
        throw new RuntimeException("Stub!");
    }

    public void STRSM(int Side, int Uplo, int TransA, int Diag, float alpha, Allocation A10, Allocation B10) {
        throw new RuntimeException("Stub!");
    }

    public void DTRSM(int Side, int Uplo, int TransA, int Diag, double alpha, Allocation A10, Allocation B10) {
        throw new RuntimeException("Stub!");
    }

    public void CTRSM(int Side, int Uplo, int TransA, int Diag, Float2 alpha, Allocation A10, Allocation B10) {
        throw new RuntimeException("Stub!");
    }

    public void ZTRSM(int Side, int Uplo, int TransA, int Diag, Double2 alpha, Allocation A10, Allocation B10) {
        throw new RuntimeException("Stub!");
    }

    public void CHEMM(int Side, int Uplo, Float2 alpha, Allocation A10, Allocation B10, Float2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void ZHEMM(int Side, int Uplo, Double2 alpha, Allocation A10, Allocation B10, Double2 beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void CHERK(int Uplo, int Trans, float alpha, Allocation A10, float beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void ZHERK(int Uplo, int Trans, double alpha, Allocation A10, double beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void CHER2K(int Uplo, int Trans, Float2 alpha, Allocation A10, Allocation B10, float beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void ZHER2K(int Uplo, int Trans, Double2 alpha, Allocation A10, Allocation B10, double beta, Allocation C10) {
        throw new RuntimeException("Stub!");
    }

    public void BNNM(Allocation A10, int a_offset, Allocation B10, int b_offset, Allocation C10, int c_offset, int c_mult) {
        throw new RuntimeException("Stub!");
    }
}
