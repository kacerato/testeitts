package com.android.apksig;

import com.android.apksig.ApkSignerEngine;
import com.android.apksig.DefaultApkSignerEngine;
import com.android.apksig.Hints;
import com.android.apksig.apk.ApkFormatException;
import com.android.apksig.apk.ApkSigningBlockNotFoundException;
import com.android.apksig.apk.ApkUtils;
import com.android.apksig.apk.MinSdkVersionException;
import com.android.apksig.internal.util.ByteBufferDataSource;
import com.android.apksig.internal.zip.CentralDirectoryRecord;
import com.android.apksig.internal.zip.EocdRecord;
import com.android.apksig.internal.zip.LocalFileRecord;
import com.android.apksig.internal.zip.ZipUtils;
import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSinks;
import com.android.apksig.util.DataSource;
import com.android.apksig.util.DataSources;
import com.android.apksig.util.ReadableDataSink;
import com.android.apksig.zip.ZipFormatException;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.SignatureException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class ApkSigner {
    private static final short ALIGNMENT_ZIP_EXTRA_DATA_FIELD_HEADER_ID = -9931;
    private static final short ALIGNMENT_ZIP_EXTRA_DATA_FIELD_MIN_SIZE_BYTES = 6;
    private static final short ANDROID_COMMON_PAGE_ALIGNMENT_BYTES = 4096;
    private static final short ANDROID_FILE_ALIGNMENT_BYTES = 4096;
    private static final String ANDROID_MANIFEST_ZIP_ENTRY_NAME = "AndroidManifest.xml";
    private final boolean mAlignFileSize;
    private final String mCreatedBy;
    private final boolean mDebuggableApkPermitted;
    private final boolean mForceSourceStampOverwrite;
    private final DataSource mInputApkDataSource;
    private final File mInputApkFile;
    private final Integer mMinSdkVersion;
    private final boolean mOtherSignersSignaturesPreserved;
    private final DataSink mOutputApkDataSink;
    private final DataSource mOutputApkDataSource;
    private final File mOutputApkFile;
    private final File mOutputV4File;
    private final int mRotationMinSdkVersion;
    private final boolean mRotationTargetsDevRelease;
    private final List<SignerConfig> mSignerConfigs;
    private final ApkSignerEngine mSignerEngine;
    private final SigningCertificateLineage mSigningCertificateLineage;
    private final SignerConfig mSourceStampSignerConfig;
    private final SigningCertificateLineage mSourceStampSigningCertificateLineage;
    private final boolean mV1SigningEnabled;
    private final boolean mV2SigningEnabled;
    private final boolean mV3SigningEnabled;
    private final boolean mV4ErrorReportingEnabled;
    private final boolean mV4SigningEnabled;
    private final boolean mVerityEnabled;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

        static {
            int[] iArr = new int[ApkSignerEngine.InputJarEntryInstructions.OutputPolicy.values().length];
            $SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy = iArr;
            try {
                iArr[ApkSignerEngine.InputJarEntryInstructions.OutputPolicy.OUTPUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy[ApkSignerEngine.InputJarEntryInstructions.OutputPolicy.OUTPUT_BY_ENGINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy[ApkSignerEngine.InputJarEntryInstructions.OutputPolicy.SKIP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class OutputSizeAndDataOffset {
        public long dataOffsetBytes;
        public long outputBytes;

        public OutputSizeAndDataOffset(long j10, long j11) {
            this.outputBytes = j10;
            this.dataOffsetBytes = j11;
        }
    }

    public static class SignerConfig {
        private final List<X509Certificate> mCertificates;
        private boolean mDeterministicDsaSigning;
        private final String mName;
        private final PrivateKey mPrivateKey;

        public static class Builder {
            private final List<X509Certificate> mCertificates;
            private final boolean mDeterministicDsaSigning;
            private final String mName;
            private final PrivateKey mPrivateKey;

            public Builder(String str, PrivateKey privateKey, List<X509Certificate> list) {
                this(str, privateKey, list, false);
            }

            public SignerConfig build() {
                return new SignerConfig(this.mName, this.mPrivateKey, this.mCertificates, this.mDeterministicDsaSigning, null);
            }

            public Builder(String str, PrivateKey privateKey, List<X509Certificate> list, boolean z10) {
                if (!str.isEmpty()) {
                    this.mName = str;
                    this.mPrivateKey = privateKey;
                    this.mCertificates = new ArrayList(list);
                    this.mDeterministicDsaSigning = z10;
                    return;
                }
                throw new IllegalArgumentException("Empty name");
            }
        }

        public SignerConfig(String str, PrivateKey privateKey, List list, boolean z10, AnonymousClass1 anonymousClass1) {
            this(str, privateKey, list, z10);
        }

        public List<X509Certificate> getCertificates() {
            return this.mCertificates;
        }

        public boolean getDeterministicDsaSigning() {
            return this.mDeterministicDsaSigning;
        }

        public String getName() {
            return this.mName;
        }

        public PrivateKey getPrivateKey() {
            return this.mPrivateKey;
        }

        private SignerConfig(String str, PrivateKey privateKey, List<X509Certificate> list, boolean z10) {
            this.mName = str;
            this.mPrivateKey = privateKey;
            this.mCertificates = Collections.unmodifiableList(new ArrayList(list));
            this.mDeterministicDsaSigning = z10;
        }
    }

    public ApkSigner(List list, SignerConfig signerConfig, SigningCertificateLineage signingCertificateLineage, boolean z10, Integer num, int i10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, String str, ApkSignerEngine apkSignerEngine, File file, DataSource dataSource, File file2, DataSink dataSink, DataSource dataSource2, File file3, SigningCertificateLineage signingCertificateLineage2, AnonymousClass1 anonymousClass1) {
        this(list, signerConfig, signingCertificateLineage, z10, num, i10, z11, z12, z13, z14, z15, z16, z17, z18, z19, z20, str, apkSignerEngine, file, dataSource, file2, dataSink, dataSource2, file3, signingCertificateLineage2);
    }

    private static ByteBuffer createExtraFieldToAlignData(ByteBuffer byteBuffer, long j10, int i10) {
        if (i10 <= 1) {
            return byteBuffer;
        }
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining() + 5 + i10);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        while (byteBuffer.remaining() >= 4) {
            short s10 = byteBuffer.getShort();
            int unsignedInt16 = ZipUtils.getUnsignedInt16(byteBuffer);
            if (unsignedInt16 > byteBuffer.remaining()) {
                break;
            }
            if ((s10 == 0 && unsignedInt16 == 0) || s10 == -9931) {
                byteBuffer.position(byteBuffer.position() + unsignedInt16);
            } else {
                byteBuffer.position(byteBuffer.position() - 4);
                int limit = byteBuffer.limit();
                byteBuffer.limit(byteBuffer.position() + 4 + unsignedInt16);
                allocate.put(byteBuffer);
                byteBuffer.limit(limit);
            }
        }
        int position = (i10 - ((int) (((j10 + allocate.position()) + 6) % i10))) % i10;
        allocate.putShort(ALIGNMENT_ZIP_EXTRA_DATA_FIELD_HEADER_ID);
        ZipUtils.putUnsignedInt16(allocate, position + 2);
        ZipUtils.putUnsignedInt16(allocate, i10);
        allocate.position(allocate.position() + position);
        allocate.flip();
        return allocate;
    }

    private static List<Hints.PatternWithRange> extractPinPatterns(List<CentralDirectoryRecord> list, DataSource dataSource) throws IOException, ApkFormatException {
        CentralDirectoryRecord findCdRecord = findCdRecord(list, Hints.PIN_HINT_ASSET_ZIP_ENTRY_NAME);
        if (findCdRecord == null) {
            return null;
        }
        new ArrayList();
        try {
            return Hints.parsePinPatterns(LocalFileRecord.getUncompressedData(dataSource, findCdRecord, dataSource.size()));
        } catch (ZipFormatException unused) {
            throw new ApkFormatException("Bad " + ((Object) findCdRecord));
        }
    }

    private static CentralDirectoryRecord findCdRecord(List<CentralDirectoryRecord> list, String str) {
        for (CentralDirectoryRecord centralDirectoryRecord : list) {
            if (str.equals(centralDirectoryRecord.getName())) {
                return centralDirectoryRecord;
            }
        }
        return null;
    }

    private static void fulfillInspectInputJarEntryRequest(DataSource dataSource, LocalFileRecord localFileRecord, ApkSignerEngine.InspectJarEntryRequest inspectJarEntryRequest) throws IOException, ApkFormatException {
        try {
            localFileRecord.outputUncompressedData(dataSource, inspectJarEntryRequest.getDataSink());
            inspectJarEntryRequest.done();
        } catch (ZipFormatException e10) {
            throw new ApkFormatException("Malformed ZIP entry: " + localFileRecord.getName(), e10);
        }
    }

    public static ByteBuffer getAndroidManifestFromApk(List<CentralDirectoryRecord> list, DataSource dataSource) throws IOException, ApkFormatException, ZipFormatException {
        CentralDirectoryRecord findCdRecord = findCdRecord(list, "AndroidManifest.xml");
        if (findCdRecord != null) {
            return ByteBuffer.wrap(LocalFileRecord.getUncompressedData(dataSource, findCdRecord, dataSource.size()));
        }
        throw new ApkFormatException("Missing AndroidManifest.xml");
    }

    private static int getInputJarEntryDataAlignmentMultiple(LocalFileRecord localFileRecord) {
        if (localFileRecord.isDataCompressed()) {
            return 1;
        }
        ByteBuffer extra = localFileRecord.getExtra();
        if (extra.hasRemaining()) {
            extra.order(ByteOrder.LITTLE_ENDIAN);
            while (true) {
                if (extra.remaining() < 4) {
                    break;
                }
                short s10 = extra.getShort();
                int unsignedInt16 = ZipUtils.getUnsignedInt16(extra);
                if (unsignedInt16 > extra.remaining()) {
                    break;
                }
                if (s10 != -9931) {
                    extra.position(extra.position() + unsignedInt16);
                } else if (unsignedInt16 >= 2) {
                    return ZipUtils.getUnsignedInt16(extra);
                }
            }
        }
        return localFileRecord.getName().endsWith(".so") ? 4096 : 4;
    }

    private static int getMinSdkVersionFromApk(List<CentralDirectoryRecord> list, DataSource dataSource) throws IOException, MinSdkVersionException {
        try {
            return ApkUtils.getMinSdkVersionFromBinaryAndroidManifest(getAndroidManifestFromApk(list, dataSource));
        } catch (ApkFormatException | ZipFormatException e10) {
            throw new MinSdkVersionException("Failed to determine APK's minimum supported Android platform version", e10);
        }
    }

    private static ByteBuffer getZipCentralDirectory(DataSource dataSource, ApkUtils.ZipSections zipSections) throws IOException, ApkFormatException {
        long zipCentralDirectorySizeBytes = zipSections.getZipCentralDirectorySizeBytes();
        if (zipCentralDirectorySizeBytes <= 2147483647L) {
            ByteBuffer byteBuffer = dataSource.getByteBuffer(zipSections.getZipCentralDirectoryOffset(), (int) zipCentralDirectorySizeBytes);
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            return byteBuffer;
        }
        throw new ApkFormatException("ZIP Central Directory too large: " + zipCentralDirectorySizeBytes);
    }

    private static long outputDataToOutputApk(String str, byte[] bArr, long j10, List<CentralDirectoryRecord> list, int i10, int i11, DataSink dataSink) throws IOException {
        ZipUtils.DeflateResult deflate = ZipUtils.deflate(ByteBuffer.wrap(bArr));
        byte[] bArr2 = deflate.output;
        long j11 = deflate.inputCrc32;
        long outputRecordWithDeflateCompressedData = LocalFileRecord.outputRecordWithDeflateCompressedData(str, i10, i11, bArr2, j11, bArr.length, dataSink);
        list.add(CentralDirectoryRecord.createWithDeflateCompressedData(str, i10, i11, j11, bArr2.length, bArr.length, j10));
        return outputRecordWithDeflateCompressedData;
    }

    private static OutputSizeAndDataOffset outputInputJarEntryLfhRecordPreservingDataAlignment(DataSource dataSource, LocalFileRecord localFileRecord, DataSink dataSink, long j10) throws IOException {
        long startOffsetInArchive = localFileRecord.getStartOffsetInArchive();
        if (startOffsetInArchive == j10) {
            return new OutputSizeAndDataOffset(localFileRecord.outputRecord(dataSource, dataSink), localFileRecord.getDataStartOffsetInRecord());
        }
        int inputJarEntryDataAlignmentMultiple = getInputJarEntryDataAlignmentMultiple(localFileRecord);
        if (inputJarEntryDataAlignmentMultiple > 1) {
            long j11 = inputJarEntryDataAlignmentMultiple;
            if (startOffsetInArchive % j11 != j10 % j11) {
                if ((startOffsetInArchive + localFileRecord.getDataStartOffsetInRecord()) % j11 != 0) {
                    return new OutputSizeAndDataOffset(localFileRecord.outputRecord(dataSource, dataSink), localFileRecord.getDataStartOffsetInRecord());
                }
                return new OutputSizeAndDataOffset(localFileRecord.outputRecordWithModifiedExtra(dataSource, createExtraFieldToAlignData(localFileRecord.getExtra(), j10 + localFileRecord.getExtraFieldStartOffsetInsideRecord(), inputJarEntryDataAlignmentMultiple), dataSink), (localFileRecord.getDataStartOffsetInRecord() + r12.remaining()) - localFileRecord.getExtra().remaining());
            }
        }
        return new OutputSizeAndDataOffset(localFileRecord.outputRecord(dataSource, dataSink), localFileRecord.getDataStartOffsetInRecord());
    }

    private static List<CentralDirectoryRecord> parseZipCentralDirectory(ByteBuffer byteBuffer, ApkUtils.ZipSections zipSections) throws ApkFormatException {
        long zipCentralDirectoryOffset = zipSections.getZipCentralDirectoryOffset();
        int zipCentralDirectoryRecordCount = zipSections.getZipCentralDirectoryRecordCount();
        ArrayList arrayList = new ArrayList(zipCentralDirectoryRecordCount);
        HashSet hashSet = new HashSet(zipCentralDirectoryRecordCount);
        for (int i10 = 0; i10 < zipCentralDirectoryRecordCount; i10++) {
            int position = byteBuffer.position();
            try {
                CentralDirectoryRecord record = CentralDirectoryRecord.getRecord(byteBuffer);
                String name = record.getName();
                if (!hashSet.add(name)) {
                    throw new ApkFormatException("Multiple ZIP entries with the same name: " + name);
                }
                arrayList.add(record);
            } catch (ZipFormatException e10) {
                throw new ApkFormatException("Malformed ZIP Central Directory record #" + (i10 + 1) + " at file offset " + (zipCentralDirectoryOffset + position), e10);
            }
        }
        if (!byteBuffer.hasRemaining()) {
            return arrayList;
        }
        throw new ApkFormatException("Unused space at the end of ZIP Central Directory: " + byteBuffer.remaining() + " bytes starting at file offset " + (zipCentralDirectoryOffset + byteBuffer.position()));
    }

    private static void requestOutputEntryInspection(ApkSignerEngine apkSignerEngine, String str, byte[] bArr) throws IOException {
        ApkSignerEngine.InspectJarEntryRequest outputJarEntry = apkSignerEngine.outputJarEntry(str);
        if (outputJarEntry != null) {
            outputJarEntry.getDataSink().consume(bArr, 0, bArr.length);
            outputJarEntry.done();
        }
    }

    public void sign() throws IOException, ApkFormatException, NoSuchAlgorithmException, InvalidKeyException, SignatureException, IllegalStateException {
        RandomAccessFile randomAccessFile;
        Throwable th2;
        DataSource asDataSource;
        DataSource asDataSource2;
        RandomAccessFile randomAccessFile2 = null;
        try {
            DataSource dataSource = this.mInputApkDataSource;
            if (dataSource != null) {
                asDataSource = dataSource;
                randomAccessFile = null;
            } else if (this.mInputApkFile != null) {
                randomAccessFile = new RandomAccessFile(this.mInputApkFile, a.f72595c);
                try {
                    asDataSource = DataSources.asDataSource(randomAccessFile);
                } catch (Throwable th3) {
                    th2 = th3;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    throw th2;
                }
            } else {
                throw new IllegalStateException("Input APK not specified");
            }
            try {
                DataSink dataSink = this.mOutputApkDataSink;
                if (dataSink != null) {
                    asDataSource2 = this.mOutputApkDataSource;
                } else if (this.mOutputApkFile != null) {
                    RandomAccessFile randomAccessFile3 = new RandomAccessFile(this.mOutputApkFile, "rw");
                    try {
                        randomAccessFile3.setLength(0L);
                        DataSink asDataSink = DataSinks.asDataSink(randomAccessFile3);
                        asDataSource2 = DataSources.asDataSource(randomAccessFile3);
                        dataSink = asDataSink;
                        randomAccessFile2 = randomAccessFile3;
                    } catch (Throwable th4) {
                        th = th4;
                        randomAccessFile2 = randomAccessFile3;
                        if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        throw th;
                    }
                } else {
                    throw new IllegalStateException("Output APK not specified");
                }
                sign(asDataSource, dataSink, asDataSource2);
                if (randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            randomAccessFile = null;
            th2 = th6;
        }
    }

    private ApkSigner(List<SignerConfig> list, SignerConfig signerConfig, SigningCertificateLineage signingCertificateLineage, boolean z10, Integer num, int i10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, String str, ApkSignerEngine apkSignerEngine, File file, DataSource dataSource, File file2, DataSink dataSink, DataSource dataSource2, File file3, SigningCertificateLineage signingCertificateLineage2) {
        this.mSignerConfigs = list;
        this.mSourceStampSignerConfig = signerConfig;
        this.mSourceStampSigningCertificateLineage = signingCertificateLineage;
        this.mForceSourceStampOverwrite = z10;
        this.mMinSdkVersion = num;
        this.mRotationMinSdkVersion = i10;
        this.mRotationTargetsDevRelease = z11;
        this.mV1SigningEnabled = z12;
        this.mV2SigningEnabled = z13;
        this.mV3SigningEnabled = z14;
        this.mV4SigningEnabled = z15;
        this.mAlignFileSize = z16;
        this.mVerityEnabled = z17;
        this.mV4ErrorReportingEnabled = z18;
        this.mDebuggableApkPermitted = z19;
        this.mOtherSignersSignaturesPreserved = z20;
        this.mCreatedBy = str;
        this.mSignerEngine = apkSignerEngine;
        this.mInputApkFile = file;
        this.mInputApkDataSource = dataSource;
        this.mOutputApkFile = file2;
        this.mOutputApkDataSink = dataSink;
        this.mOutputApkDataSource = dataSource2;
        this.mOutputV4File = file3;
        this.mSigningCertificateLineage = signingCertificateLineage2;
    }

    public static class Builder {
        private boolean mAlignFileSize;
        private String mCreatedBy;
        private boolean mDebuggableApkPermitted;
        private boolean mForceSourceStampOverwrite;
        private DataSource mInputApkDataSource;
        private File mInputApkFile;
        private Integer mMinSdkVersion;
        private boolean mOtherSignersSignaturesPreserved;
        private DataSink mOutputApkDataSink;
        private DataSource mOutputApkDataSource;
        private File mOutputApkFile;
        private File mOutputV4File;
        private int mRotationMinSdkVersion;
        private boolean mRotationTargetsDevRelease;
        private final List<SignerConfig> mSignerConfigs;
        private final ApkSignerEngine mSignerEngine;
        private SigningCertificateLineage mSigningCertificateLineage;
        private SignerConfig mSourceStampSignerConfig;
        private SigningCertificateLineage mSourceStampSigningCertificateLineage;
        private boolean mV1SigningEnabled;
        private boolean mV2SigningEnabled;
        private boolean mV3SigningEnabled;
        private boolean mV3SigningExplicitlyDisabled;
        private boolean mV3SigningExplicitlyEnabled;
        private boolean mV4ErrorReportingEnabled;
        private boolean mV4SigningEnabled;
        private boolean mVerityEnabled;

        public Builder(List<SignerConfig> list) {
            this.mForceSourceStampOverwrite = false;
            this.mV1SigningEnabled = true;
            this.mV2SigningEnabled = true;
            this.mV3SigningEnabled = true;
            this.mV4SigningEnabled = true;
            this.mAlignFileSize = false;
            this.mVerityEnabled = false;
            this.mV4ErrorReportingEnabled = false;
            this.mDebuggableApkPermitted = true;
            this.mRotationMinSdkVersion = 33;
            this.mRotationTargetsDevRelease = false;
            this.mV3SigningExplicitlyDisabled = false;
            this.mV3SigningExplicitlyEnabled = false;
            if (!list.isEmpty()) {
                if (list.size() > 1) {
                    this.mV3SigningEnabled = false;
                }
                this.mSignerConfigs = new ArrayList(list);
                this.mSignerEngine = null;
                return;
            }
            throw new IllegalArgumentException("At least one signer config must be provided");
        }

        private void checkInitializedWithoutEngine() {
            if (this.mSignerEngine != null) {
                throw new IllegalStateException("Operation is not available when builder initialized with an engine");
            }
        }

        public ApkSigner build() {
            boolean z10 = this.mV3SigningExplicitlyDisabled;
            if (z10 && this.mV3SigningExplicitlyEnabled) {
                throw new IllegalStateException("Builder configured to both enable and disable APK Signature Scheme v3 signing");
            }
            if (z10) {
                this.mV3SigningEnabled = false;
            }
            if (this.mV3SigningExplicitlyEnabled) {
                this.mV3SigningEnabled = true;
            }
            if (this.mV4SigningEnabled && !this.mV2SigningEnabled && !this.mV3SigningEnabled) {
                if (this.mV4ErrorReportingEnabled) {
                    throw new IllegalStateException("APK Signature Scheme v4 signing requires at least v2 or v3 signing to be enabled");
                }
                this.mV4SigningEnabled = false;
            }
            return new ApkSigner(this.mSignerConfigs, this.mSourceStampSignerConfig, this.mSourceStampSigningCertificateLineage, this.mForceSourceStampOverwrite, this.mMinSdkVersion, this.mRotationMinSdkVersion, this.mRotationTargetsDevRelease, this.mV1SigningEnabled, this.mV2SigningEnabled, this.mV3SigningEnabled, this.mV4SigningEnabled, this.mAlignFileSize, this.mVerityEnabled, this.mV4ErrorReportingEnabled, this.mDebuggableApkPermitted, this.mOtherSignersSignaturesPreserved, this.mCreatedBy, this.mSignerEngine, this.mInputApkFile, this.mInputApkDataSource, this.mOutputApkFile, this.mOutputApkDataSink, this.mOutputApkDataSource, this.mOutputV4File, this.mSigningCertificateLineage, null);
        }

        public Builder setAlignFileSize(boolean z10) {
            checkInitializedWithoutEngine();
            this.mAlignFileSize = z10;
            return this;
        }

        public Builder setCreatedBy(String str) {
            checkInitializedWithoutEngine();
            str.getClass();
            this.mCreatedBy = str;
            return this;
        }

        public Builder setDebuggableApkPermitted(boolean z10) {
            checkInitializedWithoutEngine();
            this.mDebuggableApkPermitted = z10;
            return this;
        }

        public Builder setForceSourceStampOverwrite(boolean z10) {
            this.mForceSourceStampOverwrite = z10;
            return this;
        }

        public Builder setInputApk(File file) {
            if (file != null) {
                this.mInputApkFile = file;
                this.mInputApkDataSource = null;
                return this;
            }
            throw new NullPointerException("inputApk == null");
        }

        public Builder setMinSdkVersion(int i10) {
            checkInitializedWithoutEngine();
            this.mMinSdkVersion = Integer.valueOf(i10);
            return this;
        }

        public Builder setMinSdkVersionForRotation(int i10) {
            checkInitializedWithoutEngine();
            if (i10 < 33) {
                this.mRotationMinSdkVersion = 28;
            } else {
                this.mRotationMinSdkVersion = i10;
            }
            return this;
        }

        public Builder setOtherSignersSignaturesPreserved(boolean z10) {
            checkInitializedWithoutEngine();
            this.mOtherSignersSignaturesPreserved = z10;
            return this;
        }

        public Builder setOutputApk(File file) {
            if (file != null) {
                this.mOutputApkFile = file;
                this.mOutputApkDataSink = null;
                this.mOutputApkDataSource = null;
                return this;
            }
            throw new NullPointerException("outputApk == null");
        }

        public Builder setRotationTargetsDevRelease(boolean z10) {
            checkInitializedWithoutEngine();
            this.mRotationTargetsDevRelease = z10;
            return this;
        }

        public Builder setSigningCertificateLineage(SigningCertificateLineage signingCertificateLineage) {
            if (signingCertificateLineage != null) {
                this.mV3SigningEnabled = true;
                this.mSigningCertificateLineage = signingCertificateLineage;
            }
            return this;
        }

        public Builder setSourceStampSignerConfig(SignerConfig signerConfig) {
            this.mSourceStampSignerConfig = signerConfig;
            return this;
        }

        public Builder setSourceStampSigningCertificateLineage(SigningCertificateLineage signingCertificateLineage) {
            this.mSourceStampSigningCertificateLineage = signingCertificateLineage;
            return this;
        }

        public Builder setV1SigningEnabled(boolean z10) {
            checkInitializedWithoutEngine();
            this.mV1SigningEnabled = z10;
            return this;
        }

        public Builder setV2SigningEnabled(boolean z10) {
            checkInitializedWithoutEngine();
            this.mV2SigningEnabled = z10;
            return this;
        }

        public Builder setV3SigningEnabled(boolean z10) {
            checkInitializedWithoutEngine();
            this.mV3SigningEnabled = z10;
            if (z10) {
                this.mV3SigningExplicitlyEnabled = true;
            } else {
                this.mV3SigningExplicitlyDisabled = true;
            }
            return this;
        }

        public Builder setV4ErrorReportingEnabled(boolean z10) {
            checkInitializedWithoutEngine();
            this.mV4ErrorReportingEnabled = z10;
            return this;
        }

        public Builder setV4SignatureOutputFile(File file) {
            if (file == null) {
                throw new NullPointerException("v4HashRootOutputFile == null");
            }
            this.mOutputV4File = file;
            return this;
        }

        public Builder setV4SigningEnabled(boolean z10) {
            checkInitializedWithoutEngine();
            this.mV4SigningEnabled = z10;
            this.mV4ErrorReportingEnabled = z10;
            return this;
        }

        public Builder setVerityEnabled(boolean z10) {
            checkInitializedWithoutEngine();
            this.mVerityEnabled = z10;
            return this;
        }

        public Builder setInputApk(DataSource dataSource) {
            if (dataSource != null) {
                this.mInputApkDataSource = dataSource;
                this.mInputApkFile = null;
                return this;
            }
            throw new NullPointerException("inputApk == null");
        }

        public Builder setOutputApk(ReadableDataSink readableDataSink) {
            if (readableDataSink != null) {
                return setOutputApk(readableDataSink, readableDataSink);
            }
            throw new NullPointerException("outputApk == null");
        }

        public Builder setOutputApk(DataSink dataSink, DataSource dataSource) {
            if (dataSink == null) {
                throw new NullPointerException("outputApkOut == null");
            }
            if (dataSource != null) {
                this.mOutputApkFile = null;
                this.mOutputApkDataSink = dataSink;
                this.mOutputApkDataSource = dataSource;
                return this;
            }
            throw new NullPointerException("outputApkIn == null");
        }

        public Builder(ApkSignerEngine apkSignerEngine) {
            this.mForceSourceStampOverwrite = false;
            this.mV1SigningEnabled = true;
            this.mV2SigningEnabled = true;
            this.mV3SigningEnabled = true;
            this.mV4SigningEnabled = true;
            this.mAlignFileSize = false;
            this.mVerityEnabled = false;
            this.mV4ErrorReportingEnabled = false;
            this.mDebuggableApkPermitted = true;
            this.mRotationMinSdkVersion = 33;
            this.mRotationTargetsDevRelease = false;
            this.mV3SigningExplicitlyDisabled = false;
            this.mV3SigningExplicitlyEnabled = false;
            if (apkSignerEngine != null) {
                this.mSignerEngine = apkSignerEngine;
                this.mSignerConfigs = null;
                return;
            }
            throw new NullPointerException("signerEngine == null");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0208, code lost:
    
        if (r11 > r14) goto L81;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02cb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0275  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void sign(DataSource dataSource, DataSink dataSink, DataSource dataSource2) throws IOException, ApkFormatException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        long j10;
        DataSource dataSource3;
        ApkSignerEngine apkSignerEngine;
        int minSdkVersionFromApk;
        Iterator<E> it;
        ArrayList arrayList;
        ApkSigner apkSigner;
        boolean z10;
        int i10;
        HashMap hashMap;
        byte[] bArr;
        List<CentralDirectoryRecord> list;
        int i11;
        ArrayList arrayList2;
        long j11;
        long j12;
        ArrayList arrayList3;
        HashMap hashMap2;
        long j13;
        int i12;
        ApkSignerEngine.InspectJarEntryRequest outputJarEntry;
        int i13;
        ArrayList arrayList4;
        Hints.ByteRange ClampToAbsoluteByteRange;
        try {
            ApkUtils.ZipSections findZipSections = ApkUtils.findZipSections(dataSource);
            try {
                ApkUtils.ApkSigningBlock findApkSigningBlock = ApkUtils.findApkSigningBlock(dataSource, findZipSections);
                j10 = findApkSigningBlock.getStartOffset();
                try {
                    dataSource3 = findApkSigningBlock.getContents();
                } catch (ApkSigningBlockNotFoundException unused) {
                    dataSource3 = null;
                    if (j10 == -1) {
                    }
                    DataSource slice = dataSource.slice(0L, j10);
                    List<CentralDirectoryRecord> parseZipCentralDirectory = parseZipCentralDirectory(getZipCentralDirectory(dataSource, findZipSections), findZipSections);
                    List<Hints.PatternWithRange> extractPinPatterns = extractPinPatterns(parseZipCentralDirectory, slice);
                    if (extractPinPatterns != null) {
                    }
                    apkSignerEngine = this.mSignerEngine;
                    if (apkSignerEngine == null) {
                    }
                    ApkSignerEngine apkSignerEngine2 = apkSignerEngine;
                    if (dataSource3 != null) {
                    }
                    ArrayList arrayList5 = new ArrayList(parseZipCentralDirectory);
                    Collections.sort(arrayList5, CentralDirectoryRecord.BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR);
                    HashMap hashMap3 = new HashMap(parseZipCentralDirectory.size());
                    it = arrayList5.iterator();
                    int i14 = -1;
                    long j14 = 0;
                    byte[] bArr2 = null;
                    int i15 = -1;
                    long j15 = 0;
                    while (true) {
                        ApkUtils.ZipSections zipSections = findZipSections;
                        if (!it.hasNext()) {
                        }
                    }
                }
            } catch (ApkSigningBlockNotFoundException unused2) {
                j10 = -1;
            }
            if (j10 == -1) {
                j10 = findZipSections.getZipCentralDirectoryOffset();
            }
            DataSource slice2 = dataSource.slice(0L, j10);
            List<CentralDirectoryRecord> parseZipCentralDirectory2 = parseZipCentralDirectory(getZipCentralDirectory(dataSource, findZipSections), findZipSections);
            List<Hints.PatternWithRange> extractPinPatterns2 = extractPinPatterns(parseZipCentralDirectory2, slice2);
            ArrayList arrayList6 = extractPinPatterns2 != null ? null : new ArrayList();
            apkSignerEngine = this.mSignerEngine;
            if (apkSignerEngine == null) {
                Integer num = this.mMinSdkVersion;
                if (num != null) {
                    minSdkVersionFromApk = num.intValue();
                } else {
                    minSdkVersionFromApk = getMinSdkVersionFromApk(parseZipCentralDirectory2, slice2);
                }
                ArrayList arrayList7 = new ArrayList(this.mSignerConfigs.size());
                for (Iterator<SignerConfig> it2 = this.mSignerConfigs.iterator(); it2.hasNext(); it2 = it2) {
                    SignerConfig next = it2.next();
                    arrayList7.add(new DefaultApkSignerEngine.SignerConfig.Builder(next.getName(), next.getPrivateKey(), next.getCertificates(), next.getDeterministicDsaSigning()).build());
                }
                DefaultApkSignerEngine.Builder rotationTargetsDevRelease = new DefaultApkSignerEngine.Builder(arrayList7, minSdkVersionFromApk).setV1SigningEnabled(this.mV1SigningEnabled).setV2SigningEnabled(this.mV2SigningEnabled).setV3SigningEnabled(this.mV3SigningEnabled).setVerityEnabled(this.mVerityEnabled).setDebuggableApkPermitted(this.mDebuggableApkPermitted).setOtherSignersSignaturesPreserved(this.mOtherSignersSignaturesPreserved).setSigningCertificateLineage(this.mSigningCertificateLineage).setMinSdkVersionForRotation(this.mRotationMinSdkVersion).setRotationTargetsDevRelease(this.mRotationTargetsDevRelease);
                String str = this.mCreatedBy;
                if (str != null) {
                    rotationTargetsDevRelease.setCreatedBy(str);
                }
                SignerConfig signerConfig = this.mSourceStampSignerConfig;
                if (signerConfig != null) {
                    rotationTargetsDevRelease.setStampSignerConfig(new DefaultApkSignerEngine.SignerConfig.Builder(signerConfig.getName(), this.mSourceStampSignerConfig.getPrivateKey(), this.mSourceStampSignerConfig.getCertificates(), this.mSourceStampSignerConfig.getDeterministicDsaSigning()).build());
                }
                SigningCertificateLineage signingCertificateLineage = this.mSourceStampSigningCertificateLineage;
                if (signingCertificateLineage != null) {
                    rotationTargetsDevRelease.setSourceStampSigningCertificateLineage(signingCertificateLineage);
                }
                apkSignerEngine = rotationTargetsDevRelease.build();
            }
            ApkSignerEngine apkSignerEngine22 = apkSignerEngine;
            if (dataSource3 != null) {
                apkSignerEngine22.inputApkSigningBlock(dataSource3);
            }
            ArrayList arrayList52 = new ArrayList(parseZipCentralDirectory2);
            Collections.sort(arrayList52, CentralDirectoryRecord.BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR);
            HashMap hashMap32 = new HashMap(parseZipCentralDirectory2.size());
            it = arrayList52.iterator();
            int i142 = -1;
            long j142 = 0;
            byte[] bArr22 = null;
            int i152 = -1;
            long j152 = 0;
            while (true) {
                ApkUtils.ZipSections zipSections2 = findZipSections;
                if (!it.hasNext()) {
                    CentralDirectoryRecord centralDirectoryRecord = (CentralDirectoryRecord) it.next();
                    String name = centralDirectoryRecord.getName();
                    if (!Hints.PIN_BYTE_RANGE_ZIP_ENTRY_NAME.equals(name)) {
                        if ("stamp-cert-sha256".equals(name)) {
                            int i16 = i142;
                            try {
                                bArr22 = LocalFileRecord.getUncompressedData(slice2, centralDirectoryRecord, slice2.size());
                                i142 = i16;
                            } catch (ZipFormatException unused3) {
                                throw new ApkFormatException("Bad source stamp entry");
                            }
                        } else {
                            int i17 = i142;
                            ApkSignerEngine.InputJarEntryInstructions inputJarEntry = apkSignerEngine22.inputJarEntry(name);
                            int i18 = AnonymousClass1.$SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy[inputJarEntry.getOutputPolicy().ordinal()];
                            byte[] bArr3 = bArr22;
                            if (i18 == 1) {
                                z10 = true;
                            } else {
                                if (i18 != 2 && i18 != 3) {
                                    throw new RuntimeException("Unknown output policy: " + ((Object) inputJarEntry.getOutputPolicy()));
                                }
                                z10 = false;
                            }
                            long localFileHeaderOffset = centralDirectoryRecord.getLocalFileHeaderOffset();
                            if (localFileHeaderOffset > j142) {
                                long j16 = localFileHeaderOffset - j142;
                                bArr = bArr3;
                                list = parseZipCentralDirectory2;
                                i11 = i152;
                                i10 = i17;
                                hashMap = hashMap32;
                                slice2.feed(j142, j16, dataSink);
                                arrayList2 = arrayList6;
                                j11 = j152 + j16;
                                j142 = localFileHeaderOffset;
                            } else {
                                i10 = i17;
                                hashMap = hashMap32;
                                bArr = bArr3;
                                list = parseZipCentralDirectory2;
                                i11 = i152;
                                arrayList2 = arrayList6;
                                j11 = j152;
                            }
                            try {
                                LocalFileRecord record = LocalFileRecord.getRecord(slice2, centralDirectoryRecord, slice2.size());
                                long size = j142 + record.getSize();
                                ApkSignerEngine.InspectJarEntryRequest inspectJarEntryRequest = inputJarEntry.getInspectJarEntryRequest();
                                if (inspectJarEntryRequest != null) {
                                    fulfillInspectInputJarEntryRequest(slice2, record, inspectJarEntryRequest);
                                }
                                if (z10) {
                                    int lastModificationDate = centralDirectoryRecord.getLastModificationDate();
                                    int lastModificationTime = centralDirectoryRecord.getLastModificationTime();
                                    if (i11 != -1 && lastModificationDate <= i11) {
                                        i12 = i10;
                                        if (lastModificationDate == i11) {
                                        }
                                        outputJarEntry = apkSignerEngine22.outputJarEntry(name);
                                        if (outputJarEntry != null) {
                                            fulfillInspectInputJarEntryRequest(slice2, record, outputJarEntry);
                                        }
                                        OutputSizeAndDataOffset outputInputJarEntryLfhRecordPreservingDataAlignment = outputInputJarEntryLfhRecordPreservingDataAlignment(slice2, record, dataSink, j11);
                                        j12 = size;
                                        j13 = outputInputJarEntryLfhRecordPreservingDataAlignment.outputBytes + j11;
                                        int i19 = i12;
                                        long j17 = outputInputJarEntryLfhRecordPreservingDataAlignment.dataOffsetBytes + j11;
                                        if (extractPinPatterns2 == null) {
                                            Iterator<Hints.PatternWithRange> it3 = extractPinPatterns2.iterator();
                                            boolean z11 = false;
                                            while (it3.hasNext()) {
                                                int i20 = i11;
                                                Hints.PatternWithRange next2 = it3.next();
                                                Iterator<Hints.PatternWithRange> it4 = it3;
                                                if (!next2.matcher(centralDirectoryRecord.getName()).matches() || (ClampToAbsoluteByteRange = next2.ClampToAbsoluteByteRange(new Hints.ByteRange(j17, j13))) == null) {
                                                    arrayList4 = arrayList2;
                                                } else {
                                                    arrayList4 = arrayList2;
                                                    arrayList4.add(ClampToAbsoluteByteRange);
                                                    z11 = true;
                                                }
                                                arrayList2 = arrayList4;
                                                it3 = it4;
                                                i11 = i20;
                                            }
                                            i13 = i11;
                                            arrayList3 = arrayList2;
                                            if (z11) {
                                                arrayList3.add(new Hints.ByteRange(j11, j17));
                                            }
                                        } else {
                                            i13 = i11;
                                            arrayList3 = arrayList2;
                                        }
                                        if (j11 != record.getStartOffsetInArchive()) {
                                            centralDirectoryRecord = centralDirectoryRecord.createWithModifiedLocalFileHeaderOffset(j11);
                                        }
                                        hashMap2 = hashMap;
                                        hashMap2.put(name, centralDirectoryRecord);
                                        i142 = i19;
                                        i152 = i13;
                                    }
                                    i11 = lastModificationDate;
                                    i12 = lastModificationTime;
                                    outputJarEntry = apkSignerEngine22.outputJarEntry(name);
                                    if (outputJarEntry != null) {
                                    }
                                    OutputSizeAndDataOffset outputInputJarEntryLfhRecordPreservingDataAlignment2 = outputInputJarEntryLfhRecordPreservingDataAlignment(slice2, record, dataSink, j11);
                                    j12 = size;
                                    j13 = outputInputJarEntryLfhRecordPreservingDataAlignment2.outputBytes + j11;
                                    int i192 = i12;
                                    long j172 = outputInputJarEntryLfhRecordPreservingDataAlignment2.dataOffsetBytes + j11;
                                    if (extractPinPatterns2 == null) {
                                    }
                                    if (j11 != record.getStartOffsetInArchive()) {
                                    }
                                    hashMap2 = hashMap;
                                    hashMap2.put(name, centralDirectoryRecord);
                                    i142 = i192;
                                    i152 = i13;
                                } else {
                                    j12 = size;
                                    arrayList3 = arrayList2;
                                    hashMap2 = hashMap;
                                    j13 = j11;
                                    i142 = i10;
                                    i152 = i11;
                                }
                                hashMap32 = hashMap2;
                                findZipSections = zipSections2;
                                parseZipCentralDirectory2 = list;
                                bArr22 = bArr;
                                arrayList6 = arrayList3;
                                long j18 = j13;
                                j142 = j12;
                                j152 = j18;
                            } catch (ZipFormatException e10) {
                                throw new ApkFormatException("Malformed ZIP entry: " + centralDirectoryRecord.getName(), e10);
                            }
                        }
                    }
                    findZipSections = zipSections2;
                } else {
                    List<CentralDirectoryRecord> list2 = parseZipCentralDirectory2;
                    byte[] bArr4 = bArr22;
                    int i21 = i152;
                    ArrayList arrayList8 = arrayList6;
                    HashMap hashMap4 = hashMap32;
                    int i22 = i142;
                    long size2 = slice2.size();
                    if (j142 < size2) {
                        long j19 = size2 - j142;
                        arrayList = arrayList8;
                        slice2.feed(j142, j19, dataSink);
                        j152 += j19;
                    } else {
                        arrayList = arrayList8;
                    }
                    ArrayList arrayList9 = new ArrayList(list2.size() + 10);
                    Iterator<CentralDirectoryRecord> it5 = list2.iterator();
                    while (it5.hasNext()) {
                        CentralDirectoryRecord centralDirectoryRecord2 = (CentralDirectoryRecord) hashMap4.get(it5.next().getName());
                        if (centralDirectoryRecord2 != null) {
                            arrayList9.add(centralDirectoryRecord2);
                        }
                    }
                    if (i21 == -1) {
                        i21 = 14881;
                        i22 = 0;
                    }
                    if (apkSignerEngine22.isEligibleForSourceStamp()) {
                        byte[] generateSourceStampCertificateDigest = apkSignerEngine22.generateSourceStampCertificateDigest();
                        apkSigner = this;
                        if (!apkSigner.mForceSourceStampOverwrite && bArr4 != null && !Arrays.equals(generateSourceStampCertificateDigest, bArr4)) {
                            throw new ApkFormatException(String.format("Cannot generate SourceStamp. APK contains an existing entry with the name: %s, and it is different than the provided source stamp certificate", "stamp-cert-sha256"));
                        }
                        j152 += outputDataToOutputApk("stamp-cert-sha256", generateSourceStampCertificateDigest, j152, arrayList9, i22, i21, dataSink);
                    } else {
                        apkSigner = this;
                    }
                    long j20 = j152;
                    if (arrayList != null) {
                        arrayList.add(new Hints.ByteRange(j20, Long.MAX_VALUE));
                        byte[] encodeByteRangeList = Hints.encodeByteRangeList(arrayList);
                        requestOutputEntryInspection(apkSignerEngine22, Hints.PIN_BYTE_RANGE_ZIP_ENTRY_NAME, encodeByteRangeList);
                        j20 += outputDataToOutputApk(Hints.PIN_BYTE_RANGE_ZIP_ENTRY_NAME, encodeByteRangeList, j20, arrayList9, i22, i21, dataSink);
                    }
                    ApkSignerEngine.OutputJarSignatureRequest outputJarEntries = apkSignerEngine22.outputJarEntries();
                    if (outputJarEntries != null) {
                        long j21 = j20;
                        for (ApkSignerEngine.OutputJarSignatureRequest.JarEntry jarEntry : outputJarEntries.getAdditionalJarEntries()) {
                            String name2 = jarEntry.getName();
                            byte[] data = jarEntry.getData();
                            requestOutputEntryInspection(apkSignerEngine22, name2, data);
                            j21 += outputDataToOutputApk(name2, data, j21, arrayList9, i22, i21, dataSink);
                        }
                        outputJarEntries.done();
                        j20 = j21;
                    }
                    long j22 = 0;
                    while (arrayList9.iterator().hasNext()) {
                        j22 += ((CentralDirectoryRecord) r0.next()).getSize();
                    }
                    if (j22 <= 2147483647L) {
                        ByteBuffer allocate = ByteBuffer.allocate((int) j22);
                        Iterator<E> it6 = arrayList9.iterator();
                        while (it6.hasNext()) {
                            ((CentralDirectoryRecord) it6.next()).copyTo(allocate);
                        }
                        allocate.flip();
                        ByteBufferDataSource byteBufferDataSource = new ByteBufferDataSource(allocate);
                        ByteBuffer createWithModifiedCentralDirectoryInfo = EocdRecord.createWithModifiedCentralDirectoryInfo(zipSections2.getZipEndOfCentralDirectory(), arrayList9.size(), byteBufferDataSource.size(), j20);
                        ApkSignerEngine.OutputApkSigningBlockRequest2 outputZipSections2 = apkSignerEngine22.outputZipSections2(dataSource2, byteBufferDataSource, DataSources.asDataSource(createWithModifiedCentralDirectoryInfo));
                        if (outputZipSections2 != null) {
                            int paddingSizeBeforeApkSigningBlock = outputZipSections2.getPaddingSizeBeforeApkSigningBlock();
                            byte[] apkSigningBlock = outputZipSections2.getApkSigningBlock();
                            outputZipSections2.done();
                            long size3 = byteBufferDataSource.size() + j20;
                            long j23 = j20;
                            long j24 = paddingSizeBeforeApkSigningBlock;
                            long length = size3 + j24 + apkSigningBlock.length + createWithModifiedCentralDirectoryInfo.remaining();
                            if (apkSigner.mAlignFileSize) {
                                long j25 = length % 4096;
                                if (j25 != 0) {
                                    createWithModifiedCentralDirectoryInfo = EocdRecord.createWithPaddedComment(createWithModifiedCentralDirectoryInfo, (int) (4096 - j25));
                                    ApkSignerEngine.OutputApkSigningBlockRequest2 outputZipSections22 = apkSignerEngine22.outputZipSections2(dataSource2, new ByteBufferDataSource(allocate), DataSources.asDataSource(createWithModifiedCentralDirectoryInfo));
                                    apkSigningBlock = outputZipSections22.getApkSigningBlock();
                                    outputZipSections22.done();
                                }
                            }
                            dataSink.consume(ByteBuffer.allocate(paddingSizeBeforeApkSigningBlock));
                            dataSink.consume(apkSigningBlock, 0, apkSigningBlock.length);
                            ZipUtils.setZipEocdCentralDirectoryOffset(createWithModifiedCentralDirectoryInfo, j23 + j24 + apkSigningBlock.length);
                        }
                        byteBufferDataSource.feed(0L, byteBufferDataSource.size(), dataSink);
                        dataSink.consume(createWithModifiedCentralDirectoryInfo);
                        apkSignerEngine22.outputDone();
                        if (apkSigner.mV4SigningEnabled) {
                            apkSignerEngine22.signV4(dataSource2, apkSigner.mOutputV4File, !apkSigner.mV4ErrorReportingEnabled);
                            return;
                        }
                        return;
                    }
                    throw new IOException("Output ZIP Central Directory too large: " + j22 + " bytes");
                }
            }
        } catch (ZipFormatException e11) {
            throw new ApkFormatException("Malformed APK: not a ZIP archive", e11);
        }
    }
}
