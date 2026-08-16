.class public Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private aditionalInfo:Ljava/lang/String;

.field private fileDescriptor:I

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not decode tiff file with file descriptor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5
    iput p1, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->fileDescriptor:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not decode tiff file with file descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->fileDescriptor:I

    .line 12
    iput-object p2, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->aditionalInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not decode tiff file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->fileDescriptor:I

    .line 3
    iput-object p1, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->fileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not decode tiff file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->fileDescriptor:I

    .line 8
    iput-object p1, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->fileName:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->aditionalInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAditionalInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->aditionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFileDescriptor()I
    .locals 1

    iget v0, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->fileDescriptor:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;->fileName:Ljava/lang/String;

    return-object v0
.end method
