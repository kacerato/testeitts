.class public final Lorg/google/googlejavaformat/Indent$Const;
.super Lorg/google/googlejavaformat/Indent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Indent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Const"
.end annotation


# static fields
.field public static final ZERO:Lorg/google/googlejavaformat/Indent$Const;


# instance fields
.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/google/googlejavaformat/Indent$Const;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/google/googlejavaformat/Indent$Const;-><init>(I)V

    sput-object v0, Lorg/google/googlejavaformat/Indent$Const;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/Indent;-><init>()V

    iput p1, p0, Lorg/google/googlejavaformat/Indent$Const;->n:I

    return-void
.end method

.method public static make(II)Lorg/google/googlejavaformat/Indent$Const;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "indentMultiplier"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/Indent$Const;

    mul-int/2addr p0, p1

    invoke-direct {v0, p0}, Lorg/google/googlejavaformat/Indent$Const;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public eval()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/Indent$Const;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "n"

    iget v2, p0, Lorg/google/googlejavaformat/Indent$Const;->n:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
