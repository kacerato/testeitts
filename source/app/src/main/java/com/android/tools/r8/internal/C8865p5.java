package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.Set;

public final class C8865p5 {

    public static final boolean f51434b = true;

    public final Set f51435a;

    public C8865p5(C8570nJ c8570nJ) {
        if (!f51434b && !c8570nJ.z().b(C2.L)) {
            throw new AssertionError();
        }
        C4724u1 c4724u1 = c8570nJ.f50660a;
        C2 z10 = c8570nJ.z();
        Set b10 = C4875Al0.b(333);
        if (z10.d(C2.B)) {
            AbstractC8698o5.a(c4724u1, "Landroid/app/PendingIntent$CanceledException;", b10, "Landroid/content/ActivityNotFoundException;", "Landroid/content/IntentFilter$MalformedMimeTypeException;");
            AbstractC8698o5.a(c4724u1, "Landroid/content/ReceiverCallNotAllowedException;", b10, "Landroid/content/pm/PackageManager$NameNotFoundException;", "Landroid/content/res/Resources$NotFoundException;");
            AbstractC8698o5.a(c4724u1, "Landroid/database/CursorIndexOutOfBoundsException;", b10, "Landroid/database/SQLException;", "Landroid/database/StaleDataException;");
            AbstractC8698o5.a(c4724u1, "Landroid/database/sqlite/SQLiteAbortException;", b10, "Landroid/database/sqlite/SQLiteConstraintException;", "Landroid/database/sqlite/SQLiteDatabaseCorruptException;");
            AbstractC8698o5.a(c4724u1, "Landroid/database/sqlite/SQLiteDiskIOException;", b10, "Landroid/database/sqlite/SQLiteDoneException;", "Landroid/database/sqlite/SQLiteException;");
            AbstractC8698o5.a(c4724u1, "Landroid/database/sqlite/SQLiteFullException;", b10, "Landroid/database/sqlite/SQLiteMisuseException;", "Landroid/net/ParseException;");
            AbstractC8698o5.a(c4724u1, "Landroid/opengl/GLException;", b10, "Landroid/os/BadParcelableException;", "Landroid/os/DeadObjectException;");
            AbstractC8698o5.a(c4724u1, "Landroid/os/ParcelFormatException;", b10, "Landroid/os/RemoteException;", "Landroid/provider/Settings$SettingNotFoundException;");
            AbstractC8698o5.a(c4724u1, "Landroid/test/AssertionFailedError;", b10, "Landroid/test/ComparisonFailure;", "Landroid/util/AndroidException;");
            AbstractC8698o5.a(c4724u1, "Landroid/util/AndroidRuntimeException;", b10, "Landroid/util/TimeFormatException;", "Landroid/view/InflateException;");
            AbstractC8698o5.a(c4724u1, "Landroid/view/Surface$OutOfResourcesException;", b10, "Landroid/view/SurfaceHolder$BadSurfaceTypeException;", "Landroid/view/WindowManager$BadTokenException;");
            AbstractC8698o5.a(c4724u1, "Landroid/widget/RemoteViews$ActionException;", b10, "Ljava/io/CharConversionException;", "Ljava/io/EOFException;");
            AbstractC8698o5.a(c4724u1, "Ljava/io/FileNotFoundException;", b10, "Ljava/io/IOException;", "Ljava/io/InterruptedIOException;");
            AbstractC8698o5.a(c4724u1, "Ljava/io/InvalidClassException;", b10, "Ljava/io/InvalidObjectException;", "Ljava/io/NotActiveException;");
            AbstractC8698o5.a(c4724u1, "Ljava/io/NotSerializableException;", b10, "Ljava/io/ObjectStreamException;", "Ljava/io/OptionalDataException;");
            AbstractC8698o5.a(c4724u1, "Ljava/io/StreamCorruptedException;", b10, "Ljava/io/SyncFailedException;", "Ljava/io/UTFDataFormatException;");
            AbstractC8698o5.a(c4724u1, "Ljava/io/UnsupportedEncodingException;", b10, "Ljava/io/WriteAbortedException;", "Ljava/lang/AbstractMethodError;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/ArithmeticException;", b10, "Ljava/lang/ArrayIndexOutOfBoundsException;", "Ljava/lang/ArrayStoreException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/AssertionError;", b10, "Ljava/lang/ClassCastException;", "Ljava/lang/ClassCircularityError;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/ClassFormatError;", b10, "Ljava/lang/ClassNotFoundException;", "Ljava/lang/CloneNotSupportedException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/EnumConstantNotPresentException;", b10, "Ljava/lang/Error;", "Ljava/lang/Exception;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/ExceptionInInitializerError;", b10, "Ljava/lang/IllegalAccessError;", "Ljava/lang/IllegalAccessException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/IllegalArgumentException;", b10, "Ljava/lang/IllegalMonitorStateException;", "Ljava/lang/IllegalStateException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/IllegalThreadStateException;", b10, "Ljava/lang/IncompatibleClassChangeError;", "Ljava/lang/IndexOutOfBoundsException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/InstantiationError;", b10, "Ljava/lang/InstantiationException;", "Ljava/lang/InternalError;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/InterruptedException;", b10, "Ljava/lang/LinkageError;", "Ljava/lang/NegativeArraySizeException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/NoClassDefFoundError;", b10, "Ljava/lang/NoSuchFieldError;", "Ljava/lang/NoSuchFieldException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/NoSuchMethodError;", b10, "Ljava/lang/NoSuchMethodException;", "Ljava/lang/NullPointerException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/NumberFormatException;", b10, "Ljava/lang/OutOfMemoryError;", "Ljava/lang/RuntimeException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/SecurityException;", b10, "Ljava/lang/StackOverflowError;", "Ljava/lang/StringIndexOutOfBoundsException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/ThreadDeath;", b10, "Ljava/lang/Throwable;", "Ljava/lang/TypeNotPresentException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/UnknownError;", b10, "Ljava/lang/UnsatisfiedLinkError;", "Ljava/lang/UnsupportedClassVersionError;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/UnsupportedOperationException;", b10, "Ljava/lang/VerifyError;", "Ljava/lang/VirtualMachineError;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/annotation/AnnotationFormatError;", b10, "Ljava/lang/annotation/AnnotationTypeMismatchException;", "Ljava/lang/annotation/IncompleteAnnotationException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/reflect/GenericSignatureFormatError;", b10, "Ljava/lang/reflect/InvocationTargetException;", "Ljava/lang/reflect/MalformedParameterizedTypeException;");
            AbstractC8698o5.a(c4724u1, "Ljava/lang/reflect/UndeclaredThrowableException;", b10, "Ljava/net/BindException;", "Ljava/net/ConnectException;");
            AbstractC8698o5.a(c4724u1, "Ljava/net/HttpRetryException;", b10, "Ljava/net/MalformedURLException;", "Ljava/net/NoRouteToHostException;");
            AbstractC8698o5.a(c4724u1, "Ljava/net/PortUnreachableException;", b10, "Ljava/net/ProtocolException;", "Ljava/net/SocketException;");
            AbstractC8698o5.a(c4724u1, "Ljava/net/SocketTimeoutException;", b10, "Ljava/net/URISyntaxException;", "Ljava/net/UnknownHostException;");
            AbstractC8698o5.a(c4724u1, "Ljava/net/UnknownServiceException;", b10, "Ljava/nio/BufferOverflowException;", "Ljava/nio/BufferUnderflowException;");
            AbstractC8698o5.a(c4724u1, "Ljava/nio/InvalidMarkException;", b10, "Ljava/nio/ReadOnlyBufferException;", "Ljava/nio/channels/AlreadyConnectedException;");
            AbstractC8698o5.a(c4724u1, "Ljava/nio/channels/AsynchronousCloseException;", b10, "Ljava/nio/channels/CancelledKeyException;", "Ljava/nio/channels/ClosedByInterruptException;");
            AbstractC8698o5.a(c4724u1, "Ljava/nio/channels/ClosedChannelException;", b10, "Ljava/nio/channels/ClosedSelectorException;", "Ljava/nio/channels/ConnectionPendingException;");
            AbstractC8698o5.a(c4724u1, "Ljava/nio/channels/FileLockInterruptionException;", b10, "Ljava/nio/channels/IllegalBlockingModeException;", "Ljava/nio/channels/IllegalSelectorException;");
            AbstractC8698o5.a(c4724u1, "Ljava/nio/channels/NoConnectionPendingException;", b10, "Ljava/nio/channels/NonReadableChannelException;", "Ljava/nio/channels/NonWritableChannelException;");
            AbstractC8698o5.a(c4724u1, "Ljava/nio/channels/NotYetBoundException;", b10, "Ljava/nio/channels/NotYetConnectedException;", "Ljava/nio/channels/OverlappingFileLockException;");
            AbstractC8698o5.a(c4724u1, "Ljava/nio/channels/UnresolvedAddressException;", b10, "Ljava/nio/channels/UnsupportedAddressTypeException;", "Ljava/nio/charset/CharacterCodingException;");
            AbstractC8698o5.a(c4724u1, "Ljava/nio/charset/CoderMalfunctionError;", b10, "Ljava/nio/charset/IllegalCharsetNameException;", "Ljava/nio/charset/MalformedInputException;");
            AbstractC8698o5.a(c4724u1, "Ljava/nio/charset/UnmappableCharacterException;", b10, "Ljava/nio/charset/UnsupportedCharsetException;", "Ljava/security/AccessControlException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/DigestException;", b10, "Ljava/security/GeneralSecurityException;", "Ljava/security/InvalidAlgorithmParameterException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/InvalidKeyException;", b10, "Ljava/security/InvalidParameterException;", "Ljava/security/KeyException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/KeyManagementException;", b10, "Ljava/security/KeyStoreException;", "Ljava/security/NoSuchAlgorithmException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/NoSuchProviderException;", b10, "Ljava/security/PrivilegedActionException;", "Ljava/security/ProviderException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/SignatureException;", b10, "Ljava/security/UnrecoverableEntryException;", "Ljava/security/UnrecoverableKeyException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/acl/AclNotFoundException;", b10, "Ljava/security/acl/LastOwnerException;", "Ljava/security/acl/NotOwnerException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/cert/CRLException;", b10, "Ljava/security/cert/CertPathBuilderException;", "Ljava/security/cert/CertPathValidatorException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/cert/CertStoreException;", b10, "Ljava/security/cert/CertificateEncodingException;", "Ljava/security/cert/CertificateException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/cert/CertificateExpiredException;", b10, "Ljava/security/cert/CertificateNotYetValidException;", "Ljava/security/cert/CertificateParsingException;");
            AbstractC8698o5.a(c4724u1, "Ljava/security/spec/InvalidKeySpecException;", b10, "Ljava/security/spec/InvalidParameterSpecException;", "Ljava/sql/BatchUpdateException;");
            AbstractC8698o5.a(c4724u1, "Ljava/sql/DataTruncation;", b10, "Ljava/sql/SQLException;", "Ljava/sql/SQLWarning;");
            AbstractC8698o5.a(c4724u1, "Ljava/text/ParseException;", b10, "Ljava/util/ConcurrentModificationException;", "Ljava/util/DuplicateFormatFlagsException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/EmptyStackException;", b10, "Ljava/util/FormatFlagsConversionMismatchException;", "Ljava/util/FormatterClosedException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/IllegalFormatCodePointException;", b10, "Ljava/util/IllegalFormatConversionException;", "Ljava/util/IllegalFormatException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/IllegalFormatFlagsException;", b10, "Ljava/util/IllegalFormatPrecisionException;", "Ljava/util/IllegalFormatWidthException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/InputMismatchException;", b10, "Ljava/util/InvalidPropertiesFormatException;", "Ljava/util/MissingFormatArgumentException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/MissingFormatWidthException;", b10, "Ljava/util/MissingResourceException;", "Ljava/util/NoSuchElementException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/TooManyListenersException;", b10, "Ljava/util/UnknownFormatConversionException;", "Ljava/util/UnknownFormatFlagsException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/concurrent/BrokenBarrierException;", b10, "Ljava/util/concurrent/CancellationException;", "Ljava/util/concurrent/ExecutionException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/concurrent/RejectedExecutionException;", b10, "Ljava/util/concurrent/TimeoutException;", "Ljava/util/jar/JarException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/prefs/BackingStoreException;", b10, "Ljava/util/prefs/InvalidPreferencesFormatException;", "Ljava/util/regex/PatternSyntaxException;");
            AbstractC8698o5.a(c4724u1, "Ljava/util/zip/DataFormatException;", b10, "Ljava/util/zip/ZipException;", "Ljavax/crypto/BadPaddingException;");
            AbstractC8698o5.a(c4724u1, "Ljavax/crypto/ExemptionMechanismException;", b10, "Ljavax/crypto/IllegalBlockSizeException;", "Ljavax/crypto/NoSuchPaddingException;");
            AbstractC8698o5.a(c4724u1, "Ljavax/crypto/ShortBufferException;", b10, "Ljavax/net/ssl/SSLException;", "Ljavax/net/ssl/SSLHandshakeException;");
            AbstractC8698o5.a(c4724u1, "Ljavax/net/ssl/SSLKeyException;", b10, "Ljavax/net/ssl/SSLPeerUnverifiedException;", "Ljavax/net/ssl/SSLProtocolException;");
            AbstractC8698o5.a(c4724u1, "Ljavax/security/auth/DestroyFailedException;", b10, "Ljavax/security/auth/callback/UnsupportedCallbackException;", "Ljavax/security/auth/login/LoginException;");
            AbstractC8698o5.a(c4724u1, "Ljavax/security/cert/CertificateEncodingException;", b10, "Ljavax/security/cert/CertificateException;", "Ljavax/security/cert/CertificateExpiredException;");
            AbstractC8698o5.a(c4724u1, "Ljavax/security/cert/CertificateNotYetValidException;", b10, "Ljavax/security/cert/CertificateParsingException;", "Ljavax/xml/parsers/FactoryConfigurationError;");
            AbstractC8698o5.a(c4724u1, "Ljavax/xml/parsers/ParserConfigurationException;", b10, "Ljunit/framework/AssertionFailedError;", "Ljunit/framework/ComparisonFailure;");
            AbstractC8698o5.a(c4724u1, "Lorg/apache/http/ConnectionClosedException;", b10, "Lorg/apache/http/HttpException;", "Lorg/apache/http/MalformedChunkCodingException;");
            AbstractC8698o5.a(c4724u1, "Lorg/apache/http/MethodNotSupportedException;", b10, "Lorg/apache/http/NoHttpResponseException;", "Lorg/apache/http/ParseException;");
            AbstractC8698o5.a(c4724u1, "Lorg/apache/http/ProtocolException;", b10, "Lorg/apache/http/UnsupportedHttpVersionException;", "Lorg/apache/http/auth/AuthenticationException;");
            AbstractC8698o5.a(c4724u1, "Lorg/apache/http/auth/InvalidCredentialsException;", b10, "Lorg/apache/http/auth/MalformedChallengeException;", "Lorg/apache/http/client/CircularRedirectException;");
            AbstractC8698o5.a(c4724u1, "Lorg/apache/http/client/ClientProtocolException;", b10, "Lorg/apache/http/client/HttpResponseException;", "Lorg/apache/http/client/NonRepeatableRequestException;");
            AbstractC8698o5.a(c4724u1, "Lorg/apache/http/client/RedirectException;", b10, "Lorg/apache/http/conn/ConnectTimeoutException;", "Lorg/apache/http/conn/ConnectionPoolTimeoutException;");
            AbstractC8698o5.a(c4724u1, "Lorg/apache/http/conn/HttpHostConnectException;", b10, "Lorg/apache/http/cookie/MalformedCookieException;", "Lorg/apache/http/impl/auth/NTLMEngineException;");
            AbstractC8698o5.a(c4724u1, "Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;", b10, "Lorg/apache/http/impl/client/TunnelRefusedException;", "Lorg/apache/http/impl/cookie/DateParseException;");
            AbstractC8698o5.a(c4724u1, "Lorg/json/JSONException;", b10, "Lorg/w3c/dom/DOMException;", "Lorg/xml/sax/SAXException;");
            AbstractC8698o5.a(c4724u1, "Lorg/xml/sax/SAXNotRecognizedException;", b10, "Lorg/xml/sax/SAXNotSupportedException;", "Lorg/xml/sax/SAXParseException;");
            b10.add(c4724u1.d("Lorg/xmlpull/v1/XmlPullParserException;"));
        }
        if (z10.d(C2.D)) {
            b10.add(c4724u1.d("Landroid/content/IntentSender$SendIntentException;"));
        }
        if (z10.d(C2.E)) {
            AbstractC8698o5.a(c4724u1, "Landroid/accounts/AccountsException;", b10, "Landroid/accounts/AuthenticatorException;", "Landroid/accounts/NetworkErrorException;");
            b10.add(c4724u1.d("Landroid/accounts/OperationCanceledException;"));
            b10.add(c4724u1.d("Landroid/content/OperationApplicationException;"));
        }
        if (z10.d(C2.F)) {
            AbstractC8698o5.a(c4724u1, "Ljavax/xml/datatype/DatatypeConfigurationException;", b10, "Ljavax/xml/transform/TransformerConfigurationException;", "Ljavax/xml/transform/TransformerException;");
            AbstractC8698o5.a(c4724u1, "Ljavax/xml/transform/TransformerFactoryConfigurationError;", b10, "Ljavax/xml/xpath/XPathException;", "Ljavax/xml/xpath/XPathExpressionException;");
            AbstractC8698o5.a(c4724u1, "Ljavax/xml/xpath/XPathFactoryConfigurationException;", b10, "Ljavax/xml/xpath/XPathFunctionException;", "Lorg/w3c/dom/ls/LSException;");
        }
        if (z10.d(C2.G)) {
            AbstractC8698o5.a(c4724u1, "Landroid/net/sip/SipException;", b10, "Landroid/nfc/FormatException;", "Ljava/io/IOError;");
            AbstractC8698o5.a(c4724u1, "Ljava/sql/SQLClientInfoException;", b10, "Ljava/sql/SQLDataException;", "Ljava/sql/SQLFeatureNotSupportedException;");
            AbstractC8698o5.a(c4724u1, "Ljava/sql/SQLIntegrityConstraintViolationException;", b10, "Ljava/sql/SQLInvalidAuthorizationSpecException;", "Ljava/sql/SQLNonTransientConnectionException;");
            AbstractC8698o5.a(c4724u1, "Ljava/sql/SQLNonTransientException;", b10, "Ljava/sql/SQLRecoverableException;", "Ljava/sql/SQLSyntaxErrorException;");
            AbstractC8698o5.a(c4724u1, "Ljava/sql/SQLTimeoutException;", b10, "Ljava/sql/SQLTransactionRollbackException;", "Ljava/sql/SQLTransientConnectionException;");
            AbstractC8698o5.a(c4724u1, "Ljava/sql/SQLTransientException;", b10, "Ljava/util/ServiceConfigurationError;", "Ljava/util/zip/ZipError;");
        }
        if (z10.d(C2.G_MR1)) {
            b10.add(c4724u1.d("Landroid/nfc/TagLostException;"));
        }
        if (z10.d(C2.H)) {
            AbstractC8698o5.a(c4724u1, "Landroid/app/Fragment$InstantiationException;", b10, "Landroid/database/sqlite/SQLiteAccessPermException;", "Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;");
            AbstractC8698o5.a(c4724u1, "Landroid/database/sqlite/SQLiteBlobTooBigException;", b10, "Landroid/database/sqlite/SQLiteCantOpenDatabaseException;", "Landroid/database/sqlite/SQLiteDatabaseLockedException;");
            AbstractC8698o5.a(c4724u1, "Landroid/database/sqlite/SQLiteDatatypeMismatchException;", b10, "Landroid/database/sqlite/SQLiteOutOfMemoryException;", "Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;");
            AbstractC8698o5.a(c4724u1, "Landroid/database/sqlite/SQLiteTableLockedException;", b10, "Landroid/graphics/SurfaceTexture$OutOfResourcesException;", "Landroid/os/NetworkOnMainThreadException;");
            AbstractC8698o5.a(c4724u1, "Landroid/renderscript/RSDriverException;", b10, "Landroid/renderscript/RSIllegalArgumentException;", "Landroid/renderscript/RSInvalidStateException;");
            AbstractC8698o5.a(c4724u1, "Landroid/renderscript/RSRuntimeException;", b10, "Landroid/util/Base64DataException;", "Landroid/util/MalformedJsonException;");
            b10.add(c4724u1.d("Landroid/view/KeyCharacterMap$UnavailableException;"));
        }
        if (z10.d(C2.I)) {
            b10.add(c4724u1.d("Landroid/security/KeyChainException;"));
            b10.add(c4724u1.d("Landroid/util/NoSuchPropertyException;"));
        }
        if (z10.d(C2.I_MR1)) {
            b10.add(c4724u1.d("Landroid/os/TransactionTooLargeException;"));
        }
        if (z10.d(C2.J)) {
            AbstractC8698o5.a(c4724u1, "Landroid/media/MediaCodec$CryptoException;", b10, "Landroid/media/MediaCryptoException;", "Landroid/os/OperationCanceledException;");
        }
        if (z10.d(C2.J_MR1)) {
            b10.add(c4724u1.d("Landroid/view/WindowManager$InvalidDisplayException;"));
        }
        if (z10.d(C2.J_MR2)) {
            AbstractC8698o5.a(c4724u1, "Landroid/media/DeniedByServerException;", b10, "Landroid/media/MediaDrmException;", "Landroid/media/NotProvisionedException;");
            b10.add(c4724u1.d("Landroid/media/UnsupportedSchemeException;"));
        }
        if (z10.d(C2.K)) {
            AbstractC8698o5.a(c4724u1, "Landroid/media/ResourceBusyException;", b10, "Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;", "Ljava/lang/ReflectiveOperationException;");
            b10.add(c4724u1.d("Ljavax/crypto/AEADBadTagException;"));
        }
        this.f51435a = b10;
    }
}
