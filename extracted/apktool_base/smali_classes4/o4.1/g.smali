.class public Lo4/g;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final Z:Ljava/lang/String; = "SimpleTittlePanel"


# instance fields
.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    iput-object p1, p0, Lo4/g;->X:Ljava/lang/String;

    iput-object p2, p0, Lo4/g;->Y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo4/g;->X:Ljava/lang/String;

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo4/g;->Y:Ljava/lang/String;

    return-object v0
.end method
