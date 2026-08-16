.class public final Lcom/google/protobuf/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/reflect/Field;

.field public final c:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "caseField",
            "valueField"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/protobuf/t1;->a:I

    iput-object p2, p0, Lcom/google/protobuf/t1;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/google/protobuf/t1;->c:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t1;->b:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/t1;->a:I

    return v0
.end method

.method public c()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t1;->c:Ljava/lang/reflect/Field;

    return-object v0
.end method
