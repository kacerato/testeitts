.class public Lcom/itsmagic/engine/Core/Components/JCompiler/ClassDic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public className:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public filePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public metaFolder:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "metaFolder",
            "filePath"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ClassDic;->className:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ClassDic;->metaFolder:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ClassDic;->filePath:Ljava/lang/String;

    return-void
.end method
