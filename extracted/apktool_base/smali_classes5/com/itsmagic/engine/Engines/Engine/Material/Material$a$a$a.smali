.class public Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;->onSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->f0(Ljava/lang/String;)V

    return-void
.end method
