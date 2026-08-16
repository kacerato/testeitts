.class Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/ImportOrderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringAndIndex"
.end annotation


# instance fields
.field private final index:I

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "index"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->string:Ljava/lang/String;

    iput p2, p0, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->index:I

    return-void
.end method

.method public static synthetic access$100(Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->string:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;)I
    .locals 0

    iget p0, p0, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->index:I

    return p0
.end method
