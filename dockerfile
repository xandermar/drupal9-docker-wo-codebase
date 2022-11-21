FROM drupal:9

# RUN apt-get -y update
# RUN apt-get -y install git

# RUN composer update



# Install packages
RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
    apt-get update && apt-get install --no-install-recommends -y \
    curl \
    wget \
    vim \
    git \
    unzip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush

# Install Drush
RUN composer global require drush/drush && \
    composer global update

# Clean repository
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN composer update