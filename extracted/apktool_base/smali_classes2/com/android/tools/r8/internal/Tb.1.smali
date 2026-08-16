.class public final Lcom/android/tools/r8/internal/Tb;
.super Lcom/android/tools/r8/internal/Wb;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Pb;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Pb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Wb;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tb;->b:Lcom/android/tools/r8/internal/Pb;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Tb;->b(C)Z

    move-result p1

    return p1
.end method

.method public final b(C)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tb;->b:Lcom/android/tools/r8/internal/Pb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Wb;->b(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final negate()Ljava/util/function/Predicate;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tb;->b:Lcom/android/tools/r8/internal/Pb;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tb;->b:Lcom/android/tools/r8/internal/Pb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".negate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
