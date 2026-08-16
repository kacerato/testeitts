.class public Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/B;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;Ljava/lang/String;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
