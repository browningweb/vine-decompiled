.class public final enum Lcom/amazonaws/services/simpleemail/model/IdentityType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/simpleemail/model/IdentityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/simpleemail/model/IdentityType;

.field public static final enum Domain:Lcom/amazonaws/services/simpleemail/model/IdentityType;

.field public static final enum EmailAddress:Lcom/amazonaws/services/simpleemail/model/IdentityType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;

    const-string v1, "EmailAddress"

    const-string v2, "EmailAddress"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/simpleemail/model/IdentityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;->EmailAddress:Lcom/amazonaws/services/simpleemail/model/IdentityType;

    new-instance v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;

    const-string v1, "Domain"

    const-string v2, "Domain"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/simpleemail/model/IdentityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;->Domain:Lcom/amazonaws/services/simpleemail/model/IdentityType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazonaws/services/simpleemail/model/IdentityType;

    sget-object v1, Lcom/amazonaws/services/simpleemail/model/IdentityType;->EmailAddress:Lcom/amazonaws/services/simpleemail/model/IdentityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/simpleemail/model/IdentityType;->Domain:Lcom/amazonaws/services/simpleemail/model/IdentityType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;->$VALUES:[Lcom/amazonaws/services/simpleemail/model/IdentityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/services/simpleemail/model/IdentityType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/IdentityType;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "EmailAddress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;->EmailAddress:Lcom/amazonaws/services/simpleemail/model/IdentityType;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "Domain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;->Domain:Lcom/amazonaws/services/simpleemail/model/IdentityType;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/IdentityType;
    .locals 1

    const-class v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/simpleemail/model/IdentityType;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/simpleemail/model/IdentityType;->$VALUES:[Lcom/amazonaws/services/simpleemail/model/IdentityType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/simpleemail/model/IdentityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/simpleemail/model/IdentityType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityType;->value:Ljava/lang/String;

    return-object v0
.end method