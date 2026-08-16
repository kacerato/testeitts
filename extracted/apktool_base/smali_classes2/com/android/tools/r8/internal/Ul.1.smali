.class public abstract Lcom/android/tools/r8/internal/Ul;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:[I

.field public static final c:[Lcom/android/tools/r8/internal/Cl;

.field public static final d:[Lcom/android/tools/r8/internal/Ol;

.field public static final e:[Lcom/android/tools/r8/internal/Hl;

.field public static final f:[Lcom/android/tools/r8/internal/Tl;

.field public static final g:[Lcom/android/tools/r8/internal/Sl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/tools/r8/internal/Ul;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Ul;->a:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/android/tools/r8/internal/Ul;->b:[I

    new-array v1, v0, [Lcom/android/tools/r8/internal/Cl;

    sput-object v1, Lcom/android/tools/r8/internal/Ul;->c:[Lcom/android/tools/r8/internal/Cl;

    new-array v1, v0, [Lcom/android/tools/r8/internal/Ol;

    sput-object v1, Lcom/android/tools/r8/internal/Ul;->d:[Lcom/android/tools/r8/internal/Ol;

    new-array v1, v0, [Lcom/android/tools/r8/internal/Hl;

    sput-object v1, Lcom/android/tools/r8/internal/Ul;->e:[Lcom/android/tools/r8/internal/Hl;

    new-array v1, v0, [Lcom/android/tools/r8/internal/Tl;

    sput-object v1, Lcom/android/tools/r8/internal/Ul;->f:[Lcom/android/tools/r8/internal/Tl;

    new-array v0, v0, [Lcom/android/tools/r8/internal/Sl;

    sput-object v0, Lcom/android/tools/r8/internal/Ul;->g:[Lcom/android/tools/r8/internal/Sl;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method
