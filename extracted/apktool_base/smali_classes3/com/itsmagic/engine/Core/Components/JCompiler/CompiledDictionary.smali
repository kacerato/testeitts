.class public Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public javaScripts:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Core/Components/JCompiler/ClassDic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;->javaScripts:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-void
.end method
