.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$b;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$b;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$b;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$b;->b:Lorg/json/JSONObject;

    const-string v2, "info"

    invoke-static {v1, v2}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;->a(Ljava/lang/String;)V

    return-void
.end method
