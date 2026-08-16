.class public Lw2/S$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/Q;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/Q<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final d:J


# instance fields
.field public final b:Lw2/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/t<",
            "-TF;TT;>;"
        }
    .end annotation
.end field

.field public final c:Lw2/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/Q<",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw2/t;Lw2/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/t<",
            "-TF;TT;>;",
            "Lw2/Q<",
            "TF;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/t;

    iput-object p1, p0, Lw2/S$d;->b:Lw2/t;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/Q;

    iput-object p1, p0, Lw2/S$d;->c:Lw2/Q;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lw2/S$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lw2/S$d;

    iget-object v0, p0, Lw2/S$d;->b:Lw2/t;

    iget-object v2, p1, Lw2/S$d;->b:Lw2/t;

    invoke-interface {v0, v2}, Lw2/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw2/S$d;->c:Lw2/Q;

    iget-object p1, p1, Lw2/S$d;->c:Lw2/Q;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lw2/E;
    .end annotation

    iget-object v0, p0, Lw2/S$d;->b:Lw2/t;

    iget-object v1, p0, Lw2/S$d;->c:Lw2/Q;

    invoke-interface {v1}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lw2/S$d;->b:Lw2/t;

    iget-object v1, p0, Lw2/S$d;->c:Lw2/Q;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lw2/B;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lw2/S$d;->b:Lw2/t;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lw2/S$d;->c:Lw2/Q;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Suppliers.compose("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
