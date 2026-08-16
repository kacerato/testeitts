.class final Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;
.super Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleBlankLine"
.end annotation


# instance fields
.field private final wanted:Lw2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/C<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw2/C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wanted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/C<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;->wanted:Lw2/C;

    return-void
.end method


# virtual methods
.method public merge(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    return-object p0
.end method

.method public wanted()Lw2/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/C<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;->wanted:Lw2/C;

    return-object v0
.end method
