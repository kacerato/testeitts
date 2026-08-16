.class public Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Ljava/lang/String; = "&e4@j#sseg77@#*f$#eq5!68#@asd@#%64aa!54@"


# instance fields
.field public author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public txt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public validateString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txt"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "1"

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;->version:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;->txt:Ljava/lang/String;

    .line 4
    const-string p1, "&e4@j#sseg77@#*f$#eq5!68#@asd@#%64aa!54@"

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;->validateString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "txt",
            "author"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "1"

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;->version:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;->txt:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;->author:Ljava/lang/String;

    .line 9
    const-string p1, "&e4@j#sseg77@#*f$#eq5!68#@asd@#%64aa!54@"

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;->validateString:Ljava/lang/String;

    return-void
.end method
