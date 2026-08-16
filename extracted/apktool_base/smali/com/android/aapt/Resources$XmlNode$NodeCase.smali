.class public final enum Lcom/android/aapt/Resources$XmlNode$NodeCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/D0$c;
.implements Lcom/google/protobuf/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$XmlNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NodeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/aapt/Resources$XmlNode$NodeCase;",
        ">;",
        "Lcom/google/protobuf/D0$c;",
        "Lcom/google/protobuf/b$b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/aapt/Resources$XmlNode$NodeCase;

.field public static final enum ELEMENT:Lcom/android/aapt/Resources$XmlNode$NodeCase;

.field public static final enum NODE_NOT_SET:Lcom/android/aapt/Resources$XmlNode$NodeCase;

.field public static final enum TEXT:Lcom/android/aapt/Resources$XmlNode$NodeCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/aapt/Resources$XmlNode$NodeCase;
    .locals 3

    sget-object v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->ELEMENT:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    sget-object v1, Lcom/android/aapt/Resources$XmlNode$NodeCase;->TEXT:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    sget-object v2, Lcom/android/aapt/Resources$XmlNode$NodeCase;->NODE_NOT_SET:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    filled-new-array {v0, v1, v2}, [Lcom/android/aapt/Resources$XmlNode$NodeCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;

    const-string v1, "ELEMENT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/aapt/Resources$XmlNode$NodeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->ELEMENT:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    new-instance v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;

    const-string v1, "TEXT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/aapt/Resources$XmlNode$NodeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->TEXT:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    new-instance v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;

    const-string v1, "NODE_NOT_SET"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/aapt/Resources$XmlNode$NodeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->NODE_NOT_SET:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    invoke-static {}, Lcom/android/aapt/Resources$XmlNode$NodeCase;->$values()[Lcom/android/aapt/Resources$XmlNode$NodeCase;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->$VALUES:[Lcom/android/aapt/Resources$XmlNode$NodeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/aapt/Resources$XmlNode$NodeCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->TEXT:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->ELEMENT:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->NODE_NOT_SET:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/android/aapt/Resources$XmlNode$NodeCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/aapt/Resources$XmlNode$NodeCase;->forNumber(I)Lcom/android/aapt/Resources$XmlNode$NodeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/aapt/Resources$XmlNode$NodeCase;
    .locals 1

    .line 1
    const-class v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode$NodeCase;

    return-object p0
.end method

.method public static values()[Lcom/android/aapt/Resources$XmlNode$NodeCase;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->$VALUES:[Lcom/android/aapt/Resources$XmlNode$NodeCase;

    invoke-virtual {v0}, [Lcom/android/aapt/Resources$XmlNode$NodeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/aapt/Resources$XmlNode$NodeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$NodeCase;->value:I

    return v0
.end method
