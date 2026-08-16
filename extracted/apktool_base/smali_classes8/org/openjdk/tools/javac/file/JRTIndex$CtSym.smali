.class public Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/JRTIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CtSym"
.end annotation


# static fields
.field static final EMPTY:Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;


# instance fields
.field public final hidden:Z

.field public final minProfile:Ljava/lang/String;

.field public final proprietary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->EMPTY:Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->hidden:Z

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->proprietary:Z

    iput-object p3, p0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->minProfile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CtSym["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->hidden:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->proprietary:Z

    const-string v4, ","

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "proprietary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->minProfile:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->minProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
