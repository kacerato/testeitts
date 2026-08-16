.class public abstract enum Lcom/google/common/reflect/s$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/s$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/reflect/s$d;

.field static final CURRENT:Lcom/google/common/reflect/s$d;

.field public static final enum JAVA6:Lcom/google/common/reflect/s$d;

.field public static final enum JAVA7:Lcom/google/common/reflect/s$d;

.field public static final enum JAVA8:Lcom/google/common/reflect/s$d;

.field public static final enum JAVA9:Lcom/google/common/reflect/s$d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/common/reflect/s$d$a;

    const-string v1, "JAVA6"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/s$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/s$d;->JAVA6:Lcom/google/common/reflect/s$d;

    new-instance v1, Lcom/google/common/reflect/s$d$b;

    const-string v2, "JAVA7"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/common/reflect/s$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/reflect/s$d;->JAVA7:Lcom/google/common/reflect/s$d;

    new-instance v2, Lcom/google/common/reflect/s$d$c;

    const-string v3, "JAVA8"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/common/reflect/s$d$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/common/reflect/s$d;->JAVA8:Lcom/google/common/reflect/s$d;

    new-instance v3, Lcom/google/common/reflect/s$d$d;

    const-string v4, "JAVA9"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/common/reflect/s$d$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/reflect/s$d;->JAVA9:Lcom/google/common/reflect/s$d;

    invoke-static {}, Lcom/google/common/reflect/s$d;->a()[Lcom/google/common/reflect/s$d;

    move-result-object v4

    sput-object v4, Lcom/google/common/reflect/s$d;->$VALUES:[Lcom/google/common/reflect/s$d;

    const-class v4, Ljava/lang/reflect/AnnotatedElement;

    const-class v5, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/google/common/reflect/s$d$e;

    invoke-direct {v0}, Lcom/google/common/reflect/s$d$e;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/reflect/l;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Map.java.util.Map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object v2, Lcom/google/common/reflect/s$d;->CURRENT:Lcom/google/common/reflect/s$d;

    goto :goto_0

    :cond_0
    sput-object v3, Lcom/google/common/reflect/s$d;->CURRENT:Lcom/google/common/reflect/s$d;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/common/reflect/s$d$f;

    invoke-direct {v2}, Lcom/google/common/reflect/s$d$f;-><init>()V

    invoke-virtual {v2}, Lcom/google/common/reflect/l;->a()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_2

    sput-object v1, Lcom/google/common/reflect/s$d;->CURRENT:Lcom/google/common/reflect/s$d;

    goto :goto_0

    :cond_2
    sput-object v0, Lcom/google/common/reflect/s$d;->CURRENT:Lcom/google/common/reflect/s$d;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/s$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/s$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/reflect/s$d;
    .locals 4

    sget-object v0, Lcom/google/common/reflect/s$d;->JAVA6:Lcom/google/common/reflect/s$d;

    sget-object v1, Lcom/google/common/reflect/s$d;->JAVA7:Lcom/google/common/reflect/s$d;

    sget-object v2, Lcom/google/common/reflect/s$d;->JAVA8:Lcom/google/common/reflect/s$d;

    sget-object v3, Lcom/google/common/reflect/s$d;->JAVA9:Lcom/google/common/reflect/s$d;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/common/reflect/s$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/s$d;
    .locals 1

    const-class v0, Lcom/google/common/reflect/s$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/reflect/s$d;

    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/s$d;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/s$d;->$VALUES:[Lcom/google/common/reflect/s$d;

    invoke-virtual {v0}, [Lcom/google/common/reflect/s$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/s$d;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method public d(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/common/reflect/s;->s(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e([Ljava/lang/reflect/Type;)Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/s$d;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public abstract g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
