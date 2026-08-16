.class public final enum Lsb/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsb/a$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsb/a$c;

.field public static final enum None:Lsb/a$c;

.field public static final enum ReadingBuffer:Lsb/a$c;

.field public static final enum WaitingBufferTittle:Lsb/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsb/a$c;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsb/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsb/a$c;->None:Lsb/a$c;

    new-instance v0, Lsb/a$c;

    const-string v1, "WaitingBufferTittle"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsb/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsb/a$c;->WaitingBufferTittle:Lsb/a$c;

    new-instance v0, Lsb/a$c;

    const-string v1, "ReadingBuffer"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsb/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsb/a$c;->ReadingBuffer:Lsb/a$c;

    invoke-static {}, Lsb/a$c;->a()[Lsb/a$c;

    move-result-object v0

    sput-object v0, Lsb/a$c;->$VALUES:[Lsb/a$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lsb/a$c;
    .locals 3

    sget-object v0, Lsb/a$c;->None:Lsb/a$c;

    sget-object v1, Lsb/a$c;->WaitingBufferTittle:Lsb/a$c;

    sget-object v2, Lsb/a$c;->ReadingBuffer:Lsb/a$c;

    filled-new-array {v0, v1, v2}, [Lsb/a$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsb/a$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lsb/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsb/a$c;

    return-object p0
.end method

.method public static values()[Lsb/a$c;
    .locals 1

    sget-object v0, Lsb/a$c;->$VALUES:[Lsb/a$c;

    invoke-virtual {v0}, [Lsb/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsb/a$c;

    return-object v0
.end method
