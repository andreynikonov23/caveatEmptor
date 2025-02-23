package org.company.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Currency;

public class MonetaryAmount implements Serializable {
    private final BigDecimal value;
    private final Currency currency;

    public MonetaryAmount(BigDecimal value, Currency currency) {
        this.value = value;
        this.currency = currency;
    }

    public BigDecimal getValue() {
        return value;
    }
    public Currency getCurrency() {
        return currency;
    }

    @Override
    public int hashCode() {
        return 29 * value.hashCode() + currency.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (this.hashCode() != obj.hashCode()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MonetaryAmount alienMA)) {
            return false;
        }
        return value.equals(alienMA.getValue()) && currency.equals(alienMA.getCurrency());
    }

    @Override
    public String toString() {
        return getValue() + " " + getCurrency();
    }

    public static MonetaryAmount fromString(String sqlValue) {
        String[] split = sqlValue.split(" ");
        return new MonetaryAmount(new BigDecimal(split[0]), Currency.getInstance(split[1]));
    }
}
