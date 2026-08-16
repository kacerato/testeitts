.class public final enum Ldd/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldd/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldd/b$b;

.field public static final enum ButtonElements:Ldd/b$b;

.field public static final enum CustomView:Ldd/b$b;

.field public static final enum Folder:Ldd/b$b;

.field public static final enum Item:Ldd/b$b;

.field public static final enum Separator:Ldd/b$b;

.field public static final enum Tittle:Ldd/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldd/b$b;

    const-string v1, "Folder"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/b$b;->Folder:Ldd/b$b;

    new-instance v0, Ldd/b$b;

    const-string v1, "Item"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/b$b;->Item:Ldd/b$b;

    new-instance v0, Ldd/b$b;

    const-string v1, "Tittle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/b$b;->Tittle:Ldd/b$b;

    new-instance v0, Ldd/b$b;

    const-string v1, "Separator"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/b$b;->Separator:Ldd/b$b;

    new-instance v0, Ldd/b$b;

    const-string v1, "CustomView"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ldd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/b$b;->CustomView:Ldd/b$b;

    new-instance v0, Ldd/b$b;

    const-string v1, "ButtonElements"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/b$b;->ButtonElements:Ldd/b$b;

    invoke-static {}, Ldd/b$b;->a()[Ldd/b$b;

    move-result-object v0

    sput-object v0, Ldd/b$b;->$VALUES:[Ldd/b$b;

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

.method public static synthetic a()[Ldd/b$b;
    .locals 6

    sget-object v0, Ldd/b$b;->Folder:Ldd/b$b;

    sget-object v1, Ldd/b$b;->Item:Ldd/b$b;

    sget-object v2, Ldd/b$b;->Tittle:Ldd/b$b;

    sget-object v3, Ldd/b$b;->Separator:Ldd/b$b;

    sget-object v4, Ldd/b$b;->CustomView:Ldd/b$b;

    sget-object v5, Ldd/b$b;->ButtonElements:Ldd/b$b;

    filled-new-array/range {v0 .. v5}, [Ldd/b$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldd/b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Ldd/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldd/b$b;

    return-object p0
.end method

.method public static values()[Ldd/b$b;
    .locals 1

    sget-object v0, Ldd/b$b;->$VALUES:[Ldd/b$b;

    invoke-virtual {v0}, [Ldd/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldd/b$b;

    return-object v0
.end method
