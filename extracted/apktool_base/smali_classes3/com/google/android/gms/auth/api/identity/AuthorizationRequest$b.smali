.class public final enum Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCOUNT_SELECTION_STATE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum ACCOUNT_SELECTION_TOKEN:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum PICKER_ALLOW_MULTIPLE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum PICKER_FILE_IDS:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum PICKER_MIMETYPES:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum PICKER_OAUTH_TRIGGER:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zbb:[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;


# instance fields
.field final zba:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    const-string v1, "ACCOUNT_SELECTION_TOKEN"

    const/4 v2, 0x0

    const-string v3, "account_selection_token"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->ACCOUNT_SELECTION_TOKEN:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    const-string v2, "ACCOUNT_SELECTION_STATE"

    const/4 v3, 0x1

    const-string v4, "account_selection_state"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->ACCOUNT_SELECTION_STATE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    new-instance v2, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    const-string v3, "PICKER_ALLOW_MULTIPLE"

    const/4 v4, 0x2

    const-string v5, "allow_multiple"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->PICKER_ALLOW_MULTIPLE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    new-instance v3, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    const-string v4, "PICKER_MIMETYPES"

    const/4 v5, 0x3

    const-string v6, "mimetypes"

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->PICKER_MIMETYPES:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    new-instance v4, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    const-string v5, "PICKER_FILE_IDS"

    const/4 v6, 0x4

    const-string v7, "file_ids"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->PICKER_FILE_IDS:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    new-instance v5, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    const-string v6, "PICKER_OAUTH_TRIGGER"

    const/4 v7, 0x5

    const-string v8, "trigger_onepick"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->PICKER_OAUTH_TRIGGER:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->zbb:[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->zba:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->zbb:[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    return-object v0
.end method
