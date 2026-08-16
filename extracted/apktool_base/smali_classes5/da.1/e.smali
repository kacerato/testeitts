.class public final synthetic Lda/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lda/e;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lda/e;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->Y()V

    return-void
.end method
