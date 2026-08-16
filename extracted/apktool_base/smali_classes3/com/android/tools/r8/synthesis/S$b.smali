.class public abstract Lcom/android/tools/r8/synthesis/S$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/C40;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/synthesis/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/C40<",
        "Lcom/android/tools/r8/synthesis/S$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/synthesis/S$b;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/S$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/S$b;)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/synthesis/S$b;->b:I

    .line 3
    iget p1, p1, Lcom/android/tools/r8/synthesis/S$b;->b:I

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/tools/r8/synthesis/V;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/lA;)V
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/S$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract c()Z
.end method

.method public final bridge synthetic compareTo(Lcom/android/tools/r8/internal/C40;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/S$b;->a(Lcom/android/tools/r8/synthesis/S$b;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/S$b;->a(Lcom/android/tools/r8/synthesis/S$b;)I

    move-result p1

    return p1
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/synthesis/S$b;->b:I

    return v0
.end method
