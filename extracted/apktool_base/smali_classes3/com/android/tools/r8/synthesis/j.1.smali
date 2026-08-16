.class public abstract Lcom/android/tools/r8/synthesis/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(ZLjava/nio/file/Path;Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/GlobalSyntheticsConsumer;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/synthesis/j;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, p0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/android/tools/r8/internal/Us;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Us;-><init>(Ljava/nio/file/Path;)V

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/android/tools/r8/internal/i3;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/i3;-><init>(Ljava/nio/file/Path;)V

    :goto_1
    invoke-interface {p0}, Lcom/android/tools/r8/internal/g50;->open()V

    instance-of p1, p3, Lcom/android/tools/r8/DexIndexedConsumer;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/android/tools/r8/synthesis/g;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/synthesis/g;-><init>(Lcom/android/tools/r8/internal/g50;)V

    return-object p1

    :cond_6
    instance-of p1, p3, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/android/tools/r8/synthesis/h;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/synthesis/h;-><init>(Lcom/android/tools/r8/internal/g50;)V

    return-object p1

    :cond_7
    instance-of p1, p3, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p1, :cond_8

    new-instance p1, Lcom/android/tools/r8/synthesis/i;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/synthesis/i;-><init>(Lcom/android/tools/r8/internal/g50;)V

    return-object p1

    :cond_8
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    const-string p1, "Unexpected program consumer type"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method
