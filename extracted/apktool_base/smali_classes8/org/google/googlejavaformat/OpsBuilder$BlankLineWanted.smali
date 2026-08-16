.class public abstract Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/OpsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BlankLineWanted"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;,
        Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;
    }
.end annotation


# static fields
.field public static final NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

.field public static final PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

.field public static final YES:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;-><init>(Lw2/C;)V

    sput-object v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    new-instance v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;-><init>(Lw2/C;)V

    sput-object v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    new-instance v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;-><init>(Lw2/C;)V

    sput-object v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conditional(Lorg/google/googlejavaformat/Output$BreakTag;)Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "breakTag"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;

    invoke-static {p0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public abstract merge(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wanted"
        }
    .end annotation
.end method

.method public abstract wanted()Lw2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/C<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
