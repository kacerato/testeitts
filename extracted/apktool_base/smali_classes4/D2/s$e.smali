.class public abstract enum LD2/s$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LD2/s$e;",
        ">;",
        "Lw2/I<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LD2/s$e;

.field public static final enum IS_DIRECTORY:LD2/s$e;

.field public static final enum IS_FILE:LD2/s$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LD2/s$e$a;

    const-string v1, "IS_DIRECTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LD2/s$e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LD2/s$e;->IS_DIRECTORY:LD2/s$e;

    new-instance v0, LD2/s$e$b;

    const-string v1, "IS_FILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LD2/s$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LD2/s$e;->IS_FILE:LD2/s$e;

    invoke-static {}, LD2/s$e;->a()[LD2/s$e;

    move-result-object v0

    sput-object v0, LD2/s$e;->$VALUES:[LD2/s$e;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILD2/s$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LD2/s$e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[LD2/s$e;
    .locals 2

    sget-object v0, LD2/s$e;->IS_DIRECTORY:LD2/s$e;

    sget-object v1, LD2/s$e;->IS_FILE:LD2/s$e;

    filled-new-array {v0, v1}, [LD2/s$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LD2/s$e;
    .locals 1

    const-class v0, LD2/s$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LD2/s$e;

    return-object p0
.end method

.method public static values()[LD2/s$e;
    .locals 1

    sget-object v0, LD2/s$e;->$VALUES:[LD2/s$e;

    invoke-virtual {v0}, [LD2/s$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LD2/s$e;

    return-object v0
.end method
