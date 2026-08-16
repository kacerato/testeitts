.class public final Lcom/google/protobuf/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Z0;


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/a2$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/y1;

.field public final b:Z

.field public final c:[I

.field public final d:[Lcom/google/protobuf/j0;

.field public final e:Lcom/google/protobuf/b1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/y1;Z[I[Lcom/google/protobuf/j0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "syntax",
            "messageSetWireFormat",
            "checkInitialized",
            "fields",
            "defaultInstance"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/a2;->a:Lcom/google/protobuf/y1;

    iput-boolean p2, p0, Lcom/google/protobuf/a2;->b:Z

    iput-object p3, p0, Lcom/google/protobuf/a2;->c:[I

    iput-object p4, p0, Lcom/google/protobuf/a2;->d:[Lcom/google/protobuf/j0;

    const-string p1, "defaultInstance"

    invoke-static {p5, p1}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b1;

    iput-object p1, p0, Lcom/google/protobuf/a2;->e:Lcom/google/protobuf/b1;

    return-void
.end method

.method public static e()Lcom/google/protobuf/a2$a;
    .locals 1

    new-instance v0, Lcom/google/protobuf/a2$a;

    invoke-direct {v0}, Lcom/google/protobuf/a2$a;-><init>()V

    return-object v0
.end method

.method public static f(I)Lcom/google/protobuf/a2$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numFields"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/a2$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/a2$a;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/a2;->b:Z

    return v0
.end method

.method public b()Lcom/google/protobuf/b1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/a2;->e:Lcom/google/protobuf/b1;

    return-object v0
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/a2;->c:[I

    return-object v0
.end method

.method public d()[Lcom/google/protobuf/j0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/a2;->d:[Lcom/google/protobuf/j0;

    return-object v0
.end method

.method public m()Lcom/google/protobuf/y1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/a2;->a:Lcom/google/protobuf/y1;

    return-object v0
.end method
