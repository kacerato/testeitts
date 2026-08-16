.class public Lcom/google/protobuf/w0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/w0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/w0;->newBuilderForType(Lcom/google/protobuf/a$b;)Lcom/google/protobuf/Y0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/protobuf/a$b;

.field public final synthetic b:Lcom/google/protobuf/w0;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/w0;Lcom/google/protobuf/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$parent"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/w0$a;->b:Lcom/google/protobuf/w0;

    iput-object p2, p0, Lcom/google/protobuf/w0$a;->a:Lcom/google/protobuf/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w0$a;->a:Lcom/google/protobuf/a$b;

    invoke-interface {v0}, Lcom/google/protobuf/a$b;->a()V

    return-void
.end method
