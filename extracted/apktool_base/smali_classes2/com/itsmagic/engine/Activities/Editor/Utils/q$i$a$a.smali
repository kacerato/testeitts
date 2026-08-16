.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$token",
            "val$userid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;

    const-string v1, "Token failed at server"

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
