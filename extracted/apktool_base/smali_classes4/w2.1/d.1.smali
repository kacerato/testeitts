.class public abstract enum Lw2/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/d$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw2/d;",
        ">;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation

.annotation runtime Lw2/k;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lw2/d;

.field public static final enum LOWER_CAMEL:Lw2/d;

.field public static final enum LOWER_HYPHEN:Lw2/d;

.field public static final enum LOWER_UNDERSCORE:Lw2/d;

.field public static final enum UPPER_CAMEL:Lw2/d;

.field public static final enum UPPER_UNDERSCORE:Lw2/d;


# instance fields
.field private final wordBoundary:Lw2/e;

.field private final wordSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lw2/d$a;

    const/16 v1, 0x2d

    invoke-static {v1}, Lw2/e;->q(C)Lw2/e;

    move-result-object v1

    const-string v2, "-"

    const-string v3, "LOWER_HYPHEN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lw2/d$a;-><init>(Ljava/lang/String;ILw2/e;Ljava/lang/String;)V

    sput-object v0, Lw2/d;->LOWER_HYPHEN:Lw2/d;

    new-instance v0, Lw2/d$b;

    const/16 v1, 0x5f

    invoke-static {v1}, Lw2/e;->q(C)Lw2/e;

    move-result-object v2

    const-string v3, "LOWER_UNDERSCORE"

    const/4 v4, 0x1

    const-string v5, "_"

    invoke-direct {v0, v3, v4, v2, v5}, Lw2/d$b;-><init>(Ljava/lang/String;ILw2/e;Ljava/lang/String;)V

    sput-object v0, Lw2/d;->LOWER_UNDERSCORE:Lw2/d;

    new-instance v0, Lw2/d$c;

    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lw2/e;->m(CC)Lw2/e;

    move-result-object v4

    const-string v6, "LOWER_CAMEL"

    const/4 v7, 0x2

    const-string v8, ""

    invoke-direct {v0, v6, v7, v4, v8}, Lw2/d$c;-><init>(Ljava/lang/String;ILw2/e;Ljava/lang/String;)V

    sput-object v0, Lw2/d;->LOWER_CAMEL:Lw2/d;

    new-instance v0, Lw2/d$d;

    const/4 v4, 0x3

    invoke-static {v2, v3}, Lw2/e;->m(CC)Lw2/e;

    move-result-object v2

    const-string v3, "UPPER_CAMEL"

    invoke-direct {v0, v3, v4, v2, v8}, Lw2/d$d;-><init>(Ljava/lang/String;ILw2/e;Ljava/lang/String;)V

    sput-object v0, Lw2/d;->UPPER_CAMEL:Lw2/d;

    new-instance v0, Lw2/d$e;

    const/4 v2, 0x4

    invoke-static {v1}, Lw2/e;->q(C)Lw2/e;

    move-result-object v1

    const-string v3, "UPPER_UNDERSCORE"

    invoke-direct {v0, v3, v2, v1, v5}, Lw2/d$e;-><init>(Ljava/lang/String;ILw2/e;Ljava/lang/String;)V

    sput-object v0, Lw2/d;->UPPER_UNDERSCORE:Lw2/d;

    invoke-static {}, Lw2/d;->a()[Lw2/d;

    move-result-object v0

    sput-object v0, Lw2/d;->$VALUES:[Lw2/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILw2/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/e;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lw2/d;->wordBoundary:Lw2/e;

    .line 4
    iput-object p4, p0, Lw2/d;->wordSeparator:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILw2/e;Ljava/lang/String;Lw2/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lw2/d;-><init>(Ljava/lang/String;ILw2/e;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()[Lw2/d;
    .locals 5

    sget-object v0, Lw2/d;->LOWER_HYPHEN:Lw2/d;

    sget-object v1, Lw2/d;->LOWER_UNDERSCORE:Lw2/d;

    sget-object v2, Lw2/d;->LOWER_CAMEL:Lw2/d;

    sget-object v3, Lw2/d;->UPPER_CAMEL:Lw2/d;

    sget-object v4, Lw2/d;->UPPER_UNDERSCORE:Lw2/d;

    filled-new-array {v0, v1, v2, v3, v4}, [Lw2/d;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lw2/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lw2/c;->h(C)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw2/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lw2/d;
    .locals 1

    const-class v0, Lw2/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw2/d;

    return-object p0
.end method

.method public static values()[Lw2/d;
    .locals 1

    sget-object v0, Lw2/d;->$VALUES:[Lw2/d;

    invoke-virtual {v0}, [Lw2/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw2/d;

    return-object v0
.end method


# virtual methods
.method public c(Lw2/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lw2/d;->wordBoundary:Lw2/e;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, p2, v3}, Lw2/e;->o(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v2, :cond_1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p1, Lw2/d;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lw2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lw2/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p1, Lw2/d;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw2/d;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p1, p2}, Lw2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw2/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public d(Lw2/d;)Lw2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/d;",
            ")",
            "Lw2/i<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw2/d$f;

    invoke-direct {v0, p0, p1}, Lw2/d$f;-><init>(Lw2/d;Lw2/d;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lw2/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract h(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final i(Lw2/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lw2/d;->c(Lw2/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method
