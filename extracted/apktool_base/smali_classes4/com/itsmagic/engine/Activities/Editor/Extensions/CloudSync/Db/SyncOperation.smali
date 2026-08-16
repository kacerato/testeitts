.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "exclusion"


# instance fields
.field public ipp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ipp",
            "mode"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;->ipp:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;->mode:Ljava/lang/String;

    return-void
.end method
