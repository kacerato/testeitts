.class public Lcom/itsmagic/engine/Activities/Editor/Utils/u$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$c$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
