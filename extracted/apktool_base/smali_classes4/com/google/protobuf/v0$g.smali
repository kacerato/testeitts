.class public final Lcom/google/protobuf/v0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/o0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/o0$c<",
        "Lcom/google/protobuf/v0$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/protobuf/D0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/D0$d<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lcom/google/protobuf/A2$b;

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/D0$d;ILcom/google/protobuf/A2$b;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "enumTypeMap",
            "number",
            "type",
            "isRepeated",
            "isPacked"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/D0$d<",
            "*>;I",
            "Lcom/google/protobuf/A2$b;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/v0$g;->b:Lcom/google/protobuf/D0$d;

    iput p2, p0, Lcom/google/protobuf/v0$g;->c:I

    iput-object p3, p0, Lcom/google/protobuf/v0$g;->d:Lcom/google/protobuf/A2$b;

    iput-boolean p4, p0, Lcom/google/protobuf/v0$g;->e:Z

    iput-boolean p5, p0, Lcom/google/protobuf/v0$g;->f:Z

    return-void
.end method


# virtual methods
.method public U1()Lcom/google/protobuf/A2$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$g;->d:Lcom/google/protobuf/A2$b;

    return-object v0
.end method

.method public V1()Lcom/google/protobuf/A2$c;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$g;->d:Lcom/google/protobuf/A2$b;

    invoke-virtual {v0}, Lcom/google/protobuf/A2$b;->a()Lcom/google/protobuf/A2$c;

    move-result-object v0

    return-object v0
.end method

.method public W1()Lcom/google/protobuf/D0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/D0$d<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$g;->b:Lcom/google/protobuf/D0$d;

    return-object v0
.end method

.method public Z1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/v0$g;->e:Z

    return v0
.end method

.method public a(Lcom/google/protobuf/v0$g;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/v0$g;->c:I

    iget p1, p1, Lcom/google/protobuf/v0$g;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/v0$g;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0$g;->a(Lcom/google/protobuf/v0$g;)I

    move-result p1

    return p1
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/v0$g;->c:I

    return v0
.end method

.method public i2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/v0$g;->f:Z

    return v0
.end method

.method public n(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "from"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/v0$b;

    check-cast p2, Lcom/google/protobuf/v0;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/v0$b;->t6(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method
