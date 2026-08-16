.class public final Lcom/android/tools/r8/internal/p5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/p5;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    const/16 v1, 0x14d

    invoke-static {v1}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Landroid/content/ActivityNotFoundException;"

    const-string v3, "Landroid/content/IntentFilter$MalformedMimeTypeException;"

    const-string v4, "Landroid/app/PendingIntent$CanceledException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/content/pm/PackageManager$NameNotFoundException;"

    const-string v3, "Landroid/content/res/Resources$NotFoundException;"

    const-string v4, "Landroid/content/ReceiverCallNotAllowedException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/database/SQLException;"

    const-string v3, "Landroid/database/StaleDataException;"

    const-string v4, "Landroid/database/CursorIndexOutOfBoundsException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/database/sqlite/SQLiteConstraintException;"

    const-string v3, "Landroid/database/sqlite/SQLiteDatabaseCorruptException;"

    const-string v4, "Landroid/database/sqlite/SQLiteAbortException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/database/sqlite/SQLiteDoneException;"

    const-string v3, "Landroid/database/sqlite/SQLiteException;"

    const-string v4, "Landroid/database/sqlite/SQLiteDiskIOException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/database/sqlite/SQLiteMisuseException;"

    const-string v3, "Landroid/net/ParseException;"

    const-string v4, "Landroid/database/sqlite/SQLiteFullException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/os/BadParcelableException;"

    const-string v3, "Landroid/os/DeadObjectException;"

    const-string v4, "Landroid/opengl/GLException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/os/RemoteException;"

    const-string v3, "Landroid/provider/Settings$SettingNotFoundException;"

    const-string v4, "Landroid/os/ParcelFormatException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/test/ComparisonFailure;"

    const-string v3, "Landroid/util/AndroidException;"

    const-string v4, "Landroid/test/AssertionFailedError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/util/TimeFormatException;"

    const-string v3, "Landroid/view/InflateException;"

    const-string v4, "Landroid/util/AndroidRuntimeException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/view/SurfaceHolder$BadSurfaceTypeException;"

    const-string v3, "Landroid/view/WindowManager$BadTokenException;"

    const-string v4, "Landroid/view/Surface$OutOfResourcesException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/io/CharConversionException;"

    const-string v3, "Ljava/io/EOFException;"

    const-string v4, "Landroid/widget/RemoteViews$ActionException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/io/IOException;"

    const-string v3, "Ljava/io/InterruptedIOException;"

    const-string v4, "Ljava/io/FileNotFoundException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/io/InvalidObjectException;"

    const-string v3, "Ljava/io/NotActiveException;"

    const-string v4, "Ljava/io/InvalidClassException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/io/ObjectStreamException;"

    const-string v3, "Ljava/io/OptionalDataException;"

    const-string v4, "Ljava/io/NotSerializableException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/io/SyncFailedException;"

    const-string v3, "Ljava/io/UTFDataFormatException;"

    const-string v4, "Ljava/io/StreamCorruptedException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/io/WriteAbortedException;"

    const-string v3, "Ljava/lang/AbstractMethodError;"

    const-string v4, "Ljava/io/UnsupportedEncodingException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/ArrayIndexOutOfBoundsException;"

    const-string v3, "Ljava/lang/ArrayStoreException;"

    const-string v4, "Ljava/lang/ArithmeticException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/ClassCastException;"

    const-string v3, "Ljava/lang/ClassCircularityError;"

    const-string v4, "Ljava/lang/AssertionError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/ClassNotFoundException;"

    const-string v3, "Ljava/lang/CloneNotSupportedException;"

    const-string v4, "Ljava/lang/ClassFormatError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/Error;"

    const-string v3, "Ljava/lang/Exception;"

    const-string v4, "Ljava/lang/EnumConstantNotPresentException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/IllegalAccessError;"

    const-string v3, "Ljava/lang/IllegalAccessException;"

    const-string v4, "Ljava/lang/ExceptionInInitializerError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/IllegalMonitorStateException;"

    const-string v3, "Ljava/lang/IllegalStateException;"

    const-string v4, "Ljava/lang/IllegalArgumentException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/IncompatibleClassChangeError;"

    const-string v3, "Ljava/lang/IndexOutOfBoundsException;"

    const-string v4, "Ljava/lang/IllegalThreadStateException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/InstantiationException;"

    const-string v3, "Ljava/lang/InternalError;"

    const-string v4, "Ljava/lang/InstantiationError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/LinkageError;"

    const-string v3, "Ljava/lang/NegativeArraySizeException;"

    const-string v4, "Ljava/lang/InterruptedException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/NoSuchFieldError;"

    const-string v3, "Ljava/lang/NoSuchFieldException;"

    const-string v4, "Ljava/lang/NoClassDefFoundError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/NoSuchMethodException;"

    const-string v3, "Ljava/lang/NullPointerException;"

    const-string v4, "Ljava/lang/NoSuchMethodError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/OutOfMemoryError;"

    const-string v3, "Ljava/lang/RuntimeException;"

    const-string v4, "Ljava/lang/NumberFormatException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/StackOverflowError;"

    const-string v3, "Ljava/lang/StringIndexOutOfBoundsException;"

    const-string v4, "Ljava/lang/SecurityException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/Throwable;"

    const-string v3, "Ljava/lang/TypeNotPresentException;"

    const-string v4, "Ljava/lang/ThreadDeath;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/UnsatisfiedLinkError;"

    const-string v3, "Ljava/lang/UnsupportedClassVersionError;"

    const-string v4, "Ljava/lang/UnknownError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/VerifyError;"

    const-string v3, "Ljava/lang/VirtualMachineError;"

    const-string v4, "Ljava/lang/UnsupportedOperationException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/annotation/AnnotationTypeMismatchException;"

    const-string v3, "Ljava/lang/annotation/IncompleteAnnotationException;"

    const-string v4, "Ljava/lang/annotation/AnnotationFormatError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/lang/reflect/InvocationTargetException;"

    const-string v3, "Ljava/lang/reflect/MalformedParameterizedTypeException;"

    const-string v4, "Ljava/lang/reflect/GenericSignatureFormatError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/net/BindException;"

    const-string v3, "Ljava/net/ConnectException;"

    const-string v4, "Ljava/lang/reflect/UndeclaredThrowableException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/net/MalformedURLException;"

    const-string v3, "Ljava/net/NoRouteToHostException;"

    const-string v4, "Ljava/net/HttpRetryException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/net/ProtocolException;"

    const-string v3, "Ljava/net/SocketException;"

    const-string v4, "Ljava/net/PortUnreachableException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/net/URISyntaxException;"

    const-string v3, "Ljava/net/UnknownHostException;"

    const-string v4, "Ljava/net/SocketTimeoutException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/BufferOverflowException;"

    const-string v3, "Ljava/nio/BufferUnderflowException;"

    const-string v4, "Ljava/net/UnknownServiceException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/ReadOnlyBufferException;"

    const-string v3, "Ljava/nio/channels/AlreadyConnectedException;"

    const-string v4, "Ljava/nio/InvalidMarkException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/channels/CancelledKeyException;"

    const-string v3, "Ljava/nio/channels/ClosedByInterruptException;"

    const-string v4, "Ljava/nio/channels/AsynchronousCloseException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/channels/ClosedSelectorException;"

    const-string v3, "Ljava/nio/channels/ConnectionPendingException;"

    const-string v4, "Ljava/nio/channels/ClosedChannelException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/channels/IllegalBlockingModeException;"

    const-string v3, "Ljava/nio/channels/IllegalSelectorException;"

    const-string v4, "Ljava/nio/channels/FileLockInterruptionException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/channels/NonReadableChannelException;"

    const-string v3, "Ljava/nio/channels/NonWritableChannelException;"

    const-string v4, "Ljava/nio/channels/NoConnectionPendingException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/channels/NotYetConnectedException;"

    const-string v3, "Ljava/nio/channels/OverlappingFileLockException;"

    const-string v4, "Ljava/nio/channels/NotYetBoundException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/channels/UnsupportedAddressTypeException;"

    const-string v3, "Ljava/nio/charset/CharacterCodingException;"

    const-string v4, "Ljava/nio/channels/UnresolvedAddressException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/charset/IllegalCharsetNameException;"

    const-string v3, "Ljava/nio/charset/MalformedInputException;"

    const-string v4, "Ljava/nio/charset/CoderMalfunctionError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/nio/charset/UnsupportedCharsetException;"

    const-string v3, "Ljava/security/AccessControlException;"

    const-string v4, "Ljava/nio/charset/UnmappableCharacterException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/GeneralSecurityException;"

    const-string v3, "Ljava/security/InvalidAlgorithmParameterException;"

    const-string v4, "Ljava/security/DigestException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/InvalidParameterException;"

    const-string v3, "Ljava/security/KeyException;"

    const-string v4, "Ljava/security/InvalidKeyException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/KeyStoreException;"

    const-string v3, "Ljava/security/NoSuchAlgorithmException;"

    const-string v4, "Ljava/security/KeyManagementException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/PrivilegedActionException;"

    const-string v3, "Ljava/security/ProviderException;"

    const-string v4, "Ljava/security/NoSuchProviderException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/UnrecoverableEntryException;"

    const-string v3, "Ljava/security/UnrecoverableKeyException;"

    const-string v4, "Ljava/security/SignatureException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/acl/LastOwnerException;"

    const-string v3, "Ljava/security/acl/NotOwnerException;"

    const-string v4, "Ljava/security/acl/AclNotFoundException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/cert/CertPathBuilderException;"

    const-string v3, "Ljava/security/cert/CertPathValidatorException;"

    const-string v4, "Ljava/security/cert/CRLException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/cert/CertificateEncodingException;"

    const-string v3, "Ljava/security/cert/CertificateException;"

    const-string v4, "Ljava/security/cert/CertStoreException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/cert/CertificateNotYetValidException;"

    const-string v3, "Ljava/security/cert/CertificateParsingException;"

    const-string v4, "Ljava/security/cert/CertificateExpiredException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/security/spec/InvalidParameterSpecException;"

    const-string v3, "Ljava/sql/BatchUpdateException;"

    const-string v4, "Ljava/security/spec/InvalidKeySpecException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/sql/SQLException;"

    const-string v3, "Ljava/sql/SQLWarning;"

    const-string v4, "Ljava/sql/DataTruncation;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/ConcurrentModificationException;"

    const-string v3, "Ljava/util/DuplicateFormatFlagsException;"

    const-string v4, "Ljava/text/ParseException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/FormatFlagsConversionMismatchException;"

    const-string v3, "Ljava/util/FormatterClosedException;"

    const-string v4, "Ljava/util/EmptyStackException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/IllegalFormatConversionException;"

    const-string v3, "Ljava/util/IllegalFormatException;"

    const-string v4, "Ljava/util/IllegalFormatCodePointException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/IllegalFormatPrecisionException;"

    const-string v3, "Ljava/util/IllegalFormatWidthException;"

    const-string v4, "Ljava/util/IllegalFormatFlagsException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/InvalidPropertiesFormatException;"

    const-string v3, "Ljava/util/MissingFormatArgumentException;"

    const-string v4, "Ljava/util/InputMismatchException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/MissingResourceException;"

    const-string v3, "Ljava/util/NoSuchElementException;"

    const-string v4, "Ljava/util/MissingFormatWidthException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/UnknownFormatConversionException;"

    const-string v3, "Ljava/util/UnknownFormatFlagsException;"

    const-string v4, "Ljava/util/TooManyListenersException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/concurrent/CancellationException;"

    const-string v3, "Ljava/util/concurrent/ExecutionException;"

    const-string v4, "Ljava/util/concurrent/BrokenBarrierException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/concurrent/TimeoutException;"

    const-string v3, "Ljava/util/jar/JarException;"

    const-string v4, "Ljava/util/concurrent/RejectedExecutionException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/prefs/InvalidPreferencesFormatException;"

    const-string v3, "Ljava/util/regex/PatternSyntaxException;"

    const-string v4, "Ljava/util/prefs/BackingStoreException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/zip/ZipException;"

    const-string v3, "Ljavax/crypto/BadPaddingException;"

    const-string v4, "Ljava/util/zip/DataFormatException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljavax/crypto/IllegalBlockSizeException;"

    const-string v3, "Ljavax/crypto/NoSuchPaddingException;"

    const-string v4, "Ljavax/crypto/ExemptionMechanismException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljavax/net/ssl/SSLException;"

    const-string v3, "Ljavax/net/ssl/SSLHandshakeException;"

    const-string v4, "Ljavax/crypto/ShortBufferException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljavax/net/ssl/SSLPeerUnverifiedException;"

    const-string v3, "Ljavax/net/ssl/SSLProtocolException;"

    const-string v4, "Ljavax/net/ssl/SSLKeyException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljavax/security/auth/callback/UnsupportedCallbackException;"

    const-string v3, "Ljavax/security/auth/login/LoginException;"

    const-string v4, "Ljavax/security/auth/DestroyFailedException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljavax/security/cert/CertificateException;"

    const-string v3, "Ljavax/security/cert/CertificateExpiredException;"

    const-string v4, "Ljavax/security/cert/CertificateEncodingException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljavax/security/cert/CertificateParsingException;"

    const-string v3, "Ljavax/xml/parsers/FactoryConfigurationError;"

    const-string v4, "Ljavax/security/cert/CertificateNotYetValidException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljunit/framework/AssertionFailedError;"

    const-string v3, "Ljunit/framework/ComparisonFailure;"

    const-string v4, "Ljavax/xml/parsers/ParserConfigurationException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/apache/http/HttpException;"

    const-string v3, "Lorg/apache/http/MalformedChunkCodingException;"

    const-string v4, "Lorg/apache/http/ConnectionClosedException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/apache/http/NoHttpResponseException;"

    const-string v3, "Lorg/apache/http/ParseException;"

    const-string v4, "Lorg/apache/http/MethodNotSupportedException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/apache/http/UnsupportedHttpVersionException;"

    const-string v3, "Lorg/apache/http/auth/AuthenticationException;"

    const-string v4, "Lorg/apache/http/ProtocolException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/apache/http/auth/MalformedChallengeException;"

    const-string v3, "Lorg/apache/http/client/CircularRedirectException;"

    const-string v4, "Lorg/apache/http/auth/InvalidCredentialsException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/apache/http/client/HttpResponseException;"

    const-string v3, "Lorg/apache/http/client/NonRepeatableRequestException;"

    const-string v4, "Lorg/apache/http/client/ClientProtocolException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/apache/http/conn/ConnectTimeoutException;"

    const-string v3, "Lorg/apache/http/conn/ConnectionPoolTimeoutException;"

    const-string v4, "Lorg/apache/http/client/RedirectException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/apache/http/cookie/MalformedCookieException;"

    const-string v3, "Lorg/apache/http/impl/auth/NTLMEngineException;"

    const-string v4, "Lorg/apache/http/conn/HttpHostConnectException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/apache/http/impl/client/TunnelRefusedException;"

    const-string v3, "Lorg/apache/http/impl/cookie/DateParseException;"

    const-string v4, "Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/w3c/dom/DOMException;"

    const-string v3, "Lorg/xml/sax/SAXException;"

    const-string v4, "Lorg/json/JSONException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/xml/sax/SAXNotSupportedException;"

    const-string v3, "Lorg/xml/sax/SAXParseException;"

    const-string v4, "Lorg/xml/sax/SAXNotRecognizedException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Lorg/xmlpull/v1/XmlPullParserException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v2, Lcom/android/tools/r8/internal/C2;->f:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Landroid/content/IntentSender$SendIntentException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v2, Lcom/android/tools/r8/internal/C2;->g:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Landroid/accounts/AuthenticatorException;"

    const-string v3, "Landroid/accounts/NetworkErrorException;"

    const-string v4, "Landroid/accounts/AccountsException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/accounts/OperationCanceledException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "Landroid/content/OperationApplicationException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v2, Lcom/android/tools/r8/internal/C2;->j:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Ljavax/xml/transform/TransformerConfigurationException;"

    const-string v3, "Ljavax/xml/transform/TransformerException;"

    const-string v4, "Ljavax/xml/datatype/DatatypeConfigurationException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljavax/xml/xpath/XPathException;"

    const-string v3, "Ljavax/xml/xpath/XPathExpressionException;"

    const-string v4, "Ljavax/xml/transform/TransformerFactoryConfigurationError;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljavax/xml/xpath/XPathFunctionException;"

    const-string v3, "Lorg/w3c/dom/ls/LSException;"

    const-string v4, "Ljavax/xml/xpath/XPathFactoryConfigurationException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v2, Lcom/android/tools/r8/internal/C2;->k:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Landroid/nfc/FormatException;"

    const-string v3, "Ljava/io/IOError;"

    const-string v4, "Landroid/net/sip/SipException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/sql/SQLDataException;"

    const-string v3, "Ljava/sql/SQLFeatureNotSupportedException;"

    const-string v4, "Ljava/sql/SQLClientInfoException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/sql/SQLInvalidAuthorizationSpecException;"

    const-string v3, "Ljava/sql/SQLNonTransientConnectionException;"

    const-string v4, "Ljava/sql/SQLIntegrityConstraintViolationException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/sql/SQLRecoverableException;"

    const-string v3, "Ljava/sql/SQLSyntaxErrorException;"

    const-string v4, "Ljava/sql/SQLNonTransientException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/sql/SQLTransactionRollbackException;"

    const-string v3, "Ljava/sql/SQLTransientConnectionException;"

    const-string v4, "Ljava/sql/SQLTimeoutException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ljava/util/ServiceConfigurationError;"

    const-string v3, "Ljava/util/zip/ZipError;"

    const-string v4, "Ljava/sql/SQLTransientException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v2, Lcom/android/tools/r8/internal/C2;->l:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Landroid/nfc/TagLostException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v2, Lcom/android/tools/r8/internal/C2;->m:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Landroid/database/sqlite/SQLiteAccessPermException;"

    const-string v3, "Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;"

    const-string v4, "Landroid/app/Fragment$InstantiationException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/database/sqlite/SQLiteCantOpenDatabaseException;"

    const-string v3, "Landroid/database/sqlite/SQLiteDatabaseLockedException;"

    const-string v4, "Landroid/database/sqlite/SQLiteBlobTooBigException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/database/sqlite/SQLiteOutOfMemoryException;"

    const-string v3, "Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;"

    const-string v4, "Landroid/database/sqlite/SQLiteDatatypeMismatchException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/graphics/SurfaceTexture$OutOfResourcesException;"

    const-string v3, "Landroid/os/NetworkOnMainThreadException;"

    const-string v4, "Landroid/database/sqlite/SQLiteTableLockedException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/renderscript/RSIllegalArgumentException;"

    const-string v3, "Landroid/renderscript/RSInvalidStateException;"

    const-string v4, "Landroid/renderscript/RSDriverException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/util/Base64DataException;"

    const-string v3, "Landroid/util/MalformedJsonException;"

    const-string v4, "Landroid/renderscript/RSRuntimeException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/view/KeyCharacterMap$UnavailableException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v2, Lcom/android/tools/r8/internal/C2;->p:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "Landroid/security/KeyChainException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "Landroid/util/NoSuchPropertyException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v2, Lcom/android/tools/r8/internal/C2;->q:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Landroid/os/TransactionTooLargeException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-object v2, Lcom/android/tools/r8/internal/C2;->r:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "Landroid/media/MediaCryptoException;"

    const-string v3, "Landroid/os/OperationCanceledException;"

    const-string v4, "Landroid/media/MediaCodec$CryptoException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget-object v2, Lcom/android/tools/r8/internal/C2;->s:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Landroid/view/WindowManager$InvalidDisplayException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-object v2, Lcom/android/tools/r8/internal/C2;->t:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "Landroid/media/MediaDrmException;"

    const-string v3, "Landroid/media/NotProvisionedException;"

    const-string v4, "Landroid/media/DeniedByServerException;"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Landroid/media/UnsupportedSchemeException;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v2, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;"

    const-string v2, "Ljava/lang/ReflectiveOperationException;"

    const-string v3, "Landroid/media/ResourceBusyException;"

    invoke-static {v0, v3, v1, p1, v2}, Lcom/android/tools/r8/internal/o5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Ljavax/crypto/AEADBadTagException;"

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    iput-object v1, p0, Lcom/android/tools/r8/internal/p5;->a:Ljava/util/Set;

    return-void
.end method
