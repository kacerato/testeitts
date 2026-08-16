.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$f;
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
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$f;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$f;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;

    const-string v1, "No enough cloud space"

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;->a(Ljava/lang/String;)V

    return-void
.end method
